/**
 *******************************************************************************
 *
 * @file BLE_adv_scan.c
 *
 * @brief BLE_adv_scan application
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

#include "arch.h"
#include "atm_gap_param.h"
#include "atm_scan_param.h"
#include "atm_asm.h"
#include "co_utils.h"
#include "nvds.h"
#include "nvds_tag.h"
#include "sw_timer.h"
#include "atm_adv.h"
#include "atm_ble.h"
#include "atm_co_utils.h"
#ifdef AUTO_TEST
#include "uart_stdout.h"
#endif

typedef enum {
    BAS_S_INIT,
    BAS_S_IDLE,
    BAS_S_GAP_INITIATING,
    BAS_S_ADV_CREATING,
    BAS_S_SCAN_CREATING,
    BAS_S_ADV_STARTING,
    BAS_S_ADV_STARTED,
    BAS_S_ADV_STOPPING,
    BAS_S_ADV_DELETING,
    BAS_S_SCAN_STARTING,
    BAS_S_SCAN_ON,
} ble_adv_scan_state_t;

typedef enum {
    BAS_OP_MODULE_INIT,
    BAS_OP_GAP_INIT_CFM,
    BAS_OP_CREATE_ADV_CFM,
    BAS_OP_START_ADV,
    BAS_OP_START_ADV_CFM,
    BAS_OP_ADV_TIMEOUT,
    BAS_OP_ADV_OFF_IND,
    BAS_OP_ADV_DELETE_CFM,
    BAS_OP_CREATE_SCAN_CFM,
    BAS_OP_START_SCAN,
    BAS_OP_START_SCAN_CFM,
    BAS_OP_SCAN_STOPED_RECREATE_ADV,
    BAS_OP_SCAN_STOPED_START_ADV,
    BAS_OP_RESTART_SCAN,
    BAS_OP_END = 0xFF
} ble_adv_scan_op_t;

#define S_TBL_IDX 0
#define ATM_INVALID_SCANIDX 0xFF

ATM_LOG_LOCAL_SETTING("BLE_adv_scan", D);

static uint8_t adv_act_idx = ATM_INVALID_SCANIDX;
static uint8_t scan_act_idx = ATM_INVALID_SCANIDX;
static uint16_t adv_time_csec; // centi-seconds
static sw_timer_id_t tid_adv_timer;
static atm_adv_create_t adv_create;
static atm_adv_create_t __ATM_ADV_CREATE_PARAM_CONST *create;
static atm_adv_start_t adv_start;
static atm_adv_start_t __ATM_ADV_CREATE_PARAM_CONST *start;
static uint8_t target_idx;
static bool target_found_tag[NUM_FOUND];

/**
 * @brief Callback registered with the GAP layer
 * @note Called by the GAP layer to report advertisement data.
 */
static void bas_ext_adv_ind(ble_gap_ind_ext_adv_report_t const *ind)
{
    if (ind->info & BLE_GAP_REPORT_INFO_COMPLETE_BIT) {
	if (ble_gap_addr_compare(&ind->trans_addr,
	    &create->adv_param.peer_addr)) {
	    target_found_tag[target_idx] = true;
	    ATM_LOG(D, "Found Peer Device: %02x",
		create->adv_param.peer_addr.addr.addr[0]);
	}
    }
}

/**
 * @brief Callback registered with the GAP layer.
 * @note Called after the GAP layer has initialized.
 */
static void bas_gap_init_cfm(ble_err_code_t status)
{
   atm_asm_move(S_TBL_IDX, BAS_OP_GAP_INIT_CFM);
}

/**
 * @brief Callback registered with the ATM scan module.
 * @note Called when scan activity has started.
 */
static void bas_scan_start_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    scan_act_idx = inst_idx;
    ASSERT_INFO(status == BLE_ERR_NO_ERROR, inst_idx, status);
    atm_asm_move(S_TBL_IDX, BAS_OP_START_SCAN_CFM);
}

/**
 * @brief Callback registered with the ATM scan module.
 * @note Called when scan activity has created.
 */
static void bas_scan_create_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    scan_act_idx = inst_idx;
    atm_asm_move(S_TBL_IDX, BAS_OP_CREATE_SCAN_CFM);
}

/**
 * @brief Scan stop callback. Check if target has been found and decide.
 * next advertisement target.
 * @note Called when scan activity has stopped.
 */
static void bas_scan_stop_ind(uint8_t inst_idx, ble_err_code_t status)
{
    uint8_t next_target_idx = target_idx;
    uint16_t count = 0;
#if defined(ROUND_ROBIN)
    for (uint16_t i = 0; i < NUM_FOUND; i++) {
	if (target_found_tag[i]) {
	    count++;
	}
    }

    if (count < NUM_FOUND) {
	do {
	    next_target_idx++;
	    if (next_target_idx == NUM_FOUND) {
		next_target_idx = 0;
	    }
	} while (target_found_tag[next_target_idx]);
    }
#else
    if (target_found_tag[next_target_idx]) {
	next_target_idx++;
	count = next_target_idx;
    }
#endif
    ATM_LOG(D, "Found %d of %d", count, NUM_FOUND);

    if (count == NUM_FOUND) {
	ATM_LOG(D, "Found them all!!!!  Restart again.....");
	next_target_idx = 0;
	memset(target_found_tag, 0, sizeof(target_found_tag));
    }

    if (target_idx == next_target_idx) {
	// same idx, no need to set up new parameter
	ATM_LOG(D, "Restart adv");
	atm_asm_move(S_TBL_IDX, BAS_OP_SCAN_STOPED_START_ADV);
    } else {
	// change adv peer addr to search next target device
	ATM_LOG(D, "Update adv param, Recreate adv");
	// back to base address (target_addr[0] = base_addr[0] + target_idx)
	adv_create.adv_param.peer_addr.addr.addr[0] -= target_idx;
	// set new target address
	adv_create.adv_param.peer_addr.addr.addr[0] += next_target_idx;
	target_idx = next_target_idx;
	atm_asm_move(S_TBL_IDX, BAS_OP_SCAN_STOPED_RECREATE_ADV);
    }
}

/**
 * @brief Create scan activity. Results in a state machine
 * transition to BAS_S_SCAN_CREATING.
 * @note Called when GAP is initilized.
 */
static void bas_create_scan(void)
{
    // Scan callbacks
    static atm_scan_cbs_t const scan_callbacks = {
	.scan_create_cfm = bas_scan_create_cfm,
	.scan_start_cfm = bas_scan_start_cfm,
	.scan_stop_ind = bas_scan_stop_ind,
    };
    atm_scan_err_t ret = atm_scan_create(BLE_OWN_STATIC_ADDR, &scan_callbacks);
    if (ret != SCAN_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to create scan %d", __func__, ret);
    }
}

/**
 * @brief Get scan parameters and start to scan. Results in a state machine
 * transition to BAS_S_SCAN_STARTING.
 * @note Called when the advertisement has been stopped.
 */
static void bas_start_scan(void)
{
    atm_scan_params_t start_params;
    atm_get_nvds_scan_params(&start_params);
    atm_scan_err_t ret = atm_scan_start(scan_act_idx, &start_params);
    if (ret != SCAN_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to start scan %d", __func__, ret);
    }
}

/**
 * @brief Scan on. Results in a state machine
 * transition to BAS_S_SCAN_ON.
 * @note Called when the scan activity is turned-on.
 */
static void bas_scan_on(void)
{
    ATM_LOG(D, "%s", __func__);
    atm_asm_set_state_op(S_TBL_IDX, BAS_S_SCAN_ON, BAS_OP_END);
}

/**
 * @brief Callback registered with the atm_adv module
 * @note Called upon a state change in the advertising state machine
 */
static void bas_adv_state_change(atm_adv_state_t state, uint8_t act_idx,
    ble_err_code_t status)
{
    ATM_LOG(D, "adv_state = %d", state);
    switch (state) {
	case ATM_ADV_CREATED: {
	    ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);
	    adv_act_idx = act_idx;
	    atm_asm_move(S_TBL_IDX, BAS_OP_CREATE_ADV_CFM);
	} break;
	case ATM_ADV_ON: {
	    ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);
	    atm_asm_move(S_TBL_IDX, BAS_OP_START_ADV_CFM);
	} break;
	case ATM_ADV_OFF: {
#ifdef AUTO_TEST
	    UartEndSimulation();
#else
	    if (adv_time_csec) {
		sw_timer_clear(tid_adv_timer);
	    }
	    atm_asm_move(S_TBL_IDX, BAS_OP_ADV_OFF_IND);
#endif
	} break;
	case ATM_ADV_DELETED: {
	    atm_asm_move(S_TBL_IDX, BAS_OP_ADV_DELETE_CFM);
	} break;
	case ATM_ADV_IDLE:
	case ATM_ADV_CREATING:
	case ATM_ADV_ADVDATA_SETTING:
	case ATM_ADV_SCANDATA_SETTING:
	case ATM_ADV_ADVDATA_DONE:
	case ATM_ADV_SCANDATA_DONE:
	case ATM_ADV_STARTING:
	case ATM_ADV_STOPPING:
	case ATM_ADV_DELETING:
	default: {
	    ATM_LOG(D, "Unhandled state = %d", state);
	} break;
    }
}

/**
 * @brief advertisement sw timer callback.
 * @note Called upon avertisment sw timer timeout.
 */
static void bas_adv_timer(uint8_t idx, void const *ctx)
{
    atm_asm_move(S_TBL_IDX, BAS_OP_ADV_TIMEOUT);
}

/**
 * @brief Load advertisement related parameters from NVDS.
 * @note Called upon GAP initialization.
 */
static void bas_adv_load_nvds(void)
{
    if (atm_adv_create_param_nvds(false, &adv_create)) {
	create = &adv_create;
    } else {
	ATM_LOG(D, "%s: NVDS tag for create adv param not found. Using Default",
	    __func__);
	create = atm_adv_create_param_get(0);
    }
    if (atm_adv_start_param_nvds(&adv_start)) {
	start = &adv_start;
    } else {
	ATM_LOG(D, "%s: NVDS tag for adv timeout param not found. Using Default",
	    __func__);
	start = atm_adv_start_param_get(0);
    }
    nvds_tag_len_t adv_dur_size = sizeof(adv_time_csec);
    nvds_get(NVDS_TAG_ADV_DURATION, &adv_dur_size, (uint8_t *)&adv_time_csec);

    ATM_LOG(D, "BLE adv duration (ms): %d", adv_time_csec*10);

    if (adv_time_csec) {
	tid_adv_timer = sw_timer_alloc(bas_adv_timer, NULL);
    }
}

/**
 * @brief Load advertisement related parameters and trigger GAP initialization.
 * @note Called upon module initialization.
 */
static void bas_gap_init(void)
{
    atm_ble_set_advint(1000);
    bas_adv_load_nvds();
    // Gap callbacks
    static atm_gap_cbs_t const gap_callbacks = {
	.ext_adv_ind = bas_ext_adv_ind,
	.init_cfm = bas_gap_init_cfm,
    };
    atm_gap_start(atm_gap_param_get(), &gap_callbacks);
}

/**
 * @brief Register advertisement state change callback and create
 * advertisement. Results in a state machine transition to BAS_S_ADV_STARTING.
 * @note Called when the scan activity was created.
 */
static void bas_create_adv(void)
{
    atm_adv_reg(bas_adv_state_change);

    ble_err_code_t ret = atm_adv_create(create);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s: Failed to create adv %#x", __func__, ret);
    }
}

/**
 * @brief Start to turn on advertisement. Results in a state machine
 * transition to BAS_S_ADV_STARTING.
 * @note Called when the advertisement was created.
 */
static void bas_start_adv(void)
{
    ble_err_code_t ret = atm_adv_start(adv_act_idx, start);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s: Failed to start adv with status %#x", __func__, ret);
	return;
    }
}

/**
 * @brief Advertisement on. Results in a state machine
 * transition to BAS_S_ADV_STARTED.
 * @note Called when the advertisement is turned-on.
 */
static void bas_adv_on(void)
{
    ATM_LOG(D, "%s", __func__);
    atm_asm_set_state_op(S_TBL_IDX, BAS_S_ADV_STARTED, BAS_OP_END);
    if (adv_time_csec) {
	sw_timer_set(tid_adv_timer, adv_time_csec);
    }
}

/**
 * @brief Stop advertising. Results in a state machine
 * transition to BAS_S_ADV_STOPPING.
 * @note Called when the advertisement sw timer has expired.
 */
static void bas_stop_adv(void)
{
    ble_err_code_t ret = atm_adv_stop(adv_act_idx);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to stop adv %#x", __func__, ret);
    }
}

/**
 * @brief Delete advertisement activity. Results in a state machine
 * transition to BAS_S_ADV_DELETING.
 * @note Called when the scan has stopped and tries to recreate
 * new advertisement.
 */
static void bas_delete_adv(void)
{
    ble_err_code_t ret = atm_adv_delete(adv_act_idx);
    if (ret != BLE_ERR_NO_ERROR) {
	ATM_LOG(E, "%s Fail to delete adv %#x", __func__, ret);
    }
}

/**
 * @brief Initialize the app data structures and start its state machine
 * @note Called after the platform drivers have initialized
 */
static rep_vec_err_t bas_init(void)
{
    /**
     * @brief BLE_adv_scan state machine step by step
     *
     * Step 1: Gap init
     * Step 2: Create scan
     * Step 3: Create adv
     * Step 4: Start adv
     * Step 5: Adv timeout, stop adv
     * Step 6: Start scan
     * Step 7: Scan timeout
     * Step 8: Check scan result:
     *      (1) search new target -> update target addr and start from Step 3
     *      (2) search old target -> start from Step 4
     */
    static state_entry const s_tbl[] = {
	{S_OP(BAS_S_INIT, BAS_OP_MODULE_INIT), BAS_S_GAP_INITIATING,
	    bas_gap_init},
	{S_OP(BAS_S_GAP_INITIATING, BAS_OP_GAP_INIT_CFM), BAS_S_SCAN_CREATING,
	    bas_create_scan},
	{S_OP(BAS_S_SCAN_CREATING, BAS_OP_CREATE_SCAN_CFM), BAS_S_ADV_CREATING,
	    bas_create_adv},
	{S_OP(BAS_S_ADV_CREATING, BAS_OP_CREATE_ADV_CFM), BAS_S_ADV_STARTING,
	    bas_start_adv},
	{S_OP(BAS_S_ADV_STARTING, BAS_OP_START_ADV_CFM), BAS_S_ADV_STARTED,
	    bas_adv_on},
	{S_OP(BAS_S_ADV_STARTED, BAS_OP_ADV_TIMEOUT), BAS_S_ADV_STOPPING,
	    bas_stop_adv},
	{S_OP(BAS_S_ADV_STOPPING, BAS_OP_ADV_OFF_IND), BAS_S_SCAN_STARTING,
	    bas_start_scan},
	{S_OP(BAS_S_ADV_STARTED, BAS_OP_ADV_OFF_IND), BAS_S_SCAN_STARTING,
	    bas_start_scan},
	{S_OP(BAS_S_SCAN_STARTING, BAS_OP_START_SCAN_CFM), BAS_S_SCAN_ON,
	    bas_scan_on},
	{S_OP(BAS_S_SCAN_ON, BAS_OP_SCAN_STOPED_START_ADV), BAS_S_ADV_STARTING,
	    bas_start_adv},
	{S_OP(BAS_S_SCAN_ON, BAS_OP_SCAN_STOPED_RECREATE_ADV),
	    BAS_S_ADV_DELETING, bas_delete_adv},
	{S_OP(BAS_S_ADV_DELETING, BAS_OP_ADV_DELETE_CFM), BAS_S_ADV_CREATING,
	    bas_create_adv},
    };
    atm_asm_init_table(S_TBL_IDX, s_tbl, ARRAY_LEN(s_tbl));
    atm_asm_set_state_op(S_TBL_IDX, BAS_S_INIT, BAS_OP_END);
    atm_asm_move(S_TBL_IDX, BAS_OP_MODULE_INIT);

    // Don't use the app in the ROM
    return RV_DONE;
}

/**
 * user_main()
 * Driver initialization and rep_vec additions
 */
int main(void)
{
    /**
     * Vector replacement
     */
    RV_APPM_INIT_ADD_LAST(bas_init);

    ATM_LOG(D, "user_main() done");
    return 0;
}

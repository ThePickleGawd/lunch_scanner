/**
 *******************************************************************************
 *
 * @file BLE_scan.c
 *
 * @brief BLE Scanning Application
 *
 * Copyright (C) Atmosic 2020-2022
 *
 *******************************************************************************
 */

#include "arch.h"
#include <inttypes.h>
#include "atm_gap.h"
#include "atm_gap_param.h"
#include "atm_scan.h"
#include "atm_scan_param.h"
#include "atm_asm.h"
#include "co_utils.h"
#include "nvds.h"
#include "nvds_tag.h"
#include "atm_pm.h"
#include "sw_timer.h"
#include "watchdog.h"

typedef enum {
    S_INIT,
    S_IDLE,
    S_SCAN_STARTING,
    S_SCAN_ON,
    S_SCAN_OFF
} app_state_t;

typedef enum {
    OP_MODULE_INIT,
    OP_START_SCAN,
    OP_START_SCAN_CFM,
    OP_SCAN_TIMEOUT,
    OP_RESTART_SCAN,
    OP_END = 0xFF
} app_op_t;

#define S_TBL_IDX 0
#define ATM_INVALID_SCANIDX 0xFF

ATM_LOG_LOCAL_SETTING("BLE_scan", D);

static pm_lock_id_t scan_lock_hiber;
static uint8_t activity_idx = ATM_INVALID_SCANIDX;
static uint32_t restart_time_csec; // centi-seconds
static sw_timer_id_t tid_restart;

static void parse_adv_data(uint8_t data[], uint16_t length) {
    if(!(data[6] == 0xaa && data[7] == 0xfe)) return;
}

static void print_report_ind(ble_gap_ind_ext_adv_report_t const *param)
{
    // Quick filtering for Atmosic Device
    // LSB Example Address: c900006b697c
    if(param->trans_addr.addr.addr[3] != 0x6b) return;
    if(param->trans_addr.addr.addr[4] != 0x69) return;
    if(param->trans_addr.addr.addr[5] != 0x7c) return;

    printf("RSSI %4d ", param->rssi);
    printf("phy %u/%u ", param->phy_prim, param->phy_second);

    if (param->info & BLE_GAP_REPORT_INFO_COMPLETE_BIT) {
	uint8_t rep_type = param->info & BLE_GAP_REPORT_INFO_REPORT_TYPE_MASK;
	switch (rep_type) {
	    case BLE_GAP_REPORT_TYPE_ADV_EXT:
		printf("Ext Adv from ");
		break;
	    case BLE_GAP_REPORT_TYPE_ADV_LEG:
		printf("Adv from ");
		break;
	    case BLE_GAP_REPORT_TYPE_SCAN_RSP_EXT:
		printf("Ext Scan Rsp from ");
		break;
	    case BLE_GAP_REPORT_TYPE_SCAN_RSP_LEG:
		printf("Scan Rsp from ");
		break;
	    case BLE_GAP_REPORT_TYPE_PER_ADV:
		printf("Per Adv from ");
		break;
	    default:
		printf("Adv type %u from ", rep_type);
		break;
	}

	if (param->trans_addr.type != BLE_ADDR_PUBLIC) {
	    putchar('(');
	}

	for (int i = 0; i < BLE_BDADDR_LEN; i++) {
	    printf("%02x", param->trans_addr.addr.addr[i]);
	}

	if (param->trans_addr.type != BLE_ADDR_PUBLIC) {
	    putchar(')');
	}

	if (param->info & BLE_GAP_REPORT_INFO_DIR_ADV_BIT) {
	    printf(" Target:");
	    for (int i = 0; i < BLE_BDADDR_LEN; i++) {
		printf("%02x", param->target_addr.addr.addr[i]);
	    }
	}
	watchdog_poke();
	putchar(':');
	for (int i = 0; i < param->length; i++) {
	    printf(" %02x", param->data[i]);
	}
	putchar('\n');
    }

    parse_adv_data(param->data, param->length);
}

#pragma region GAP_CALLBACKS

/*
 * @brief Callback registered with the GAP layer
 * @note Called by the GAP layer to report advertisement data
 */
static void ext_adv_ind(ble_gap_ind_ext_adv_report_t const *ind)
{
    print_report_ind(ind);
}

/*
 * @brief Callback registered with the GAP layer
 * @note Called after the GAP layer has initialized
 */
static void init_cfm(ble_err_code_t status)
{
    atm_asm_move(S_TBL_IDX, OP_START_SCAN);
}

// Gap callbacks
const atm_gap_cbs_t gap_callbacks = {
    .ext_adv_ind = ext_adv_ind,
    .init_cfm = init_cfm,
};

#pragma endregion GAP_CALLBACKS

#pragma region SCAN_CALLBACKS

/*
 * @brief Callback registered with the ATM scan module
 * @note Called after the requested scan operation has started
 */
static void start_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    activity_idx = inst_idx;

    ASSERT_INFO(status == BLE_ERR_NO_ERROR, inst_idx, status);
    atm_asm_move(S_TBL_IDX, OP_START_SCAN_CFM);
}

/*
 * @brief Callback registered with the ATM scan module
 * @note Called after the requested scan operation has stopped
 */
static void stop_ind(uint8_t inst_idx, ble_err_code_t status)
{
    atm_asm_move(S_TBL_IDX, OP_SCAN_TIMEOUT);
}

// Scan callbacks
const atm_scan_cbs_t scan_callbacks = {
    .scan_start_cfm = start_cfm,
    .scan_stop_ind = stop_ind,
};

#pragma endregion SCAN_CALLBACKS

#pragma region APPLICATION_STATE

/*
 * @brief Fetches GAP parameters and triggers GAP initialization. Results in
 * a state machine transition from S_INIT -> S_IDLE
 * @note Called upon app initialization
 */
static void scan_init(void)
{
    atm_gap_param_t *param = atm_gap_param_get();
    param->dev_config->role = BLE_GAP_ROLE_OBSERVER;
    atm_gap_start(param, &gap_callbacks);
}

/*
 * @brief Fetches scan parameters and triggers start of scan. Results in a
 * state machine transition from S_IDLE -> S_SCAN_STARTING
 * @note Called upon GAP initialization to initiate the scan
 */
static void scan_start(void)
{
    ATM_LOG(V, "%s", __func__);
    atm_scan_create_and_start(BLE_OWN_STATIC_ADDR, atm_get_dflt_scan_params(0),
	&scan_callbacks);
}

/*
 * @brief Fetches scan parameters and triggers start of scan.
 * Results in a state machine transition from S_SCAN_OFF -> S_SCAN_STARTING
 * @note Called by the app timer to restart the scan
 */
static void scan_restart(void)
{
    ATM_LOG(V, "%s", __func__);
    atm_scan_start(activity_idx, atm_get_dflt_scan_params(0));
}

/*
 * @brief Disables hibernation. Results in a state machine transition from
 * S_SCAN_STARTING -> S_SCAN_ON
 * @note Called upon scan start
 */
static void scan_on(void)
{
    atm_asm_set_state_op(S_TBL_IDX, S_SCAN_ON, OP_END);
}

/*
 * @brief Enables hibernation. Results in a state machine transition from
 * S_SCAN_ON -> S_SCAN_OFF
 * @note Called upon a scan timeout
 */
static void scan_timeout(void)
{
    ATM_LOG(V, "%s", __func__);
    if (restart_time_csec) {
	atm_pm_unlock(scan_lock_hiber);
	if (sleep_enable < SLEEP_ENABLE_HIBERNATE) {
	    sw_timer_set(tid_restart, restart_time_csec);
	}
    }
}

const state_entry s_tbl[] = {
    {S_OP(S_INIT, OP_MODULE_INIT), S_IDLE, scan_init},
    {S_OP(S_IDLE, OP_START_SCAN), S_SCAN_STARTING, scan_start},
    {S_OP(S_SCAN_STARTING, OP_START_SCAN_CFM), S_SCAN_ON, scan_on},
    {S_OP(S_SCAN_ON, OP_SCAN_TIMEOUT), S_SCAN_OFF, scan_timeout},
    {S_OP(S_SCAN_OFF, OP_RESTART_SCAN), S_SCAN_STARTING, scan_restart}
};

static void restart_timer(uint8_t idx, const void *ctx)
{
    atm_asm_move(S_TBL_IDX, OP_RESTART_SCAN);
}

#pragma endregion APPLICATION_STATE

/*
 * @brief Initialize the app data structures and start its state machine
 * @note Called after the platform drivers have initialized
 */
static rep_vec_err_t user_appm_init(void)
{
    // Read restart duration from NVDS
    nvds_tag_len_t restart_dur_size = sizeof(restart_time_csec);
    if (nvds_get(NVDS_TAG_APP_BLE_RSTRT_DUR, &restart_dur_size,
	(uint8_t *)&restart_time_csec) != NVDS_OK) {
	restart_time_csec = 0;
    }

    ATM_LOG(D, "BLE restart duration (ms): %" PRIu32, restart_time_csec*10);

    if (restart_time_csec) {
	tid_restart = sw_timer_alloc(restart_timer, NULL);
	atm_pm_set_hib_restart_time(restart_time_csec);
    }
    scan_lock_hiber = atm_pm_alloc(PM_LOCK_HIBERNATE);
    atm_pm_lock(scan_lock_hiber);

    atm_asm_init_table(S_TBL_IDX, s_tbl, ARRAY_LEN(s_tbl));
    atm_asm_set_state_op(S_TBL_IDX, S_INIT, OP_END);
    atm_asm_move(S_TBL_IDX, OP_MODULE_INIT);

    // Don't use the app in the ROM
    return RV_DONE;
}

/*
 * user_main()
 * Driver initialization and rep_vec additions
 */
int main(void)
{
    /*
     * Vector replacement
     */
    RV_APPM_INIT_ADD_LAST(user_appm_init);

    ATM_LOG(D, "user_main() done");
    return 0;
}

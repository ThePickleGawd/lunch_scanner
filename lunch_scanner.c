/**
 *******************************************************************************
 *
 * @file lunch_scanner.c
 *
 * @brief Lunch Scanner Application
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

// Drivers
#include <math.h>
#include "arch.h"
#include "atm_gap_param.h"
#include "atm_scan_param.h"
#include "atm_adv_param.h"
#include "atm_asm.h"
#include "co_utils.h"
#include "nvds.h"
#include "nvds_tag.h"
#include "sw_timer.h"
#include "atm_adv.h"
#include "atm_ble.h"
#include "atm_co_utils.h"
#include "ble_hogpd.h"

// My stuff
#include "lunch_scanner.h"
#include "lunch_parser.h"
#include "lunch_manager.h"
#include "lunch_hogp.h"

ATM_LOG_LOCAL_SETTING("lunch_scanner", D);

/*
 * FUNCTION DECLARATIONS
 *******************************************************************************
 */


/*
 * DEFINES
 *******************************************************************************
 */

#define S_TBL_IDX 0

#ifndef NVDS_TAG_ADV_DURATION
#define NVDS_TAG_ADV_DURATION 0xA3
#endif

/*
 * VARIABLES
 *******************************************************************************
 */

static app_env_t app_env;

static uint16_t adv_time_csec;

static sw_timer_id_t tid_adv_timer;

int tmpCounter = 0;
double totalDist;
int maxCount = 5;

/*
 * GAP CALLBACKS
 *******************************************************************************
 */


static void gap_ext_adv_ind(ble_gap_ind_ext_adv_report_t const *ind)
{
    // Return if report is not complete
    if(!(ind->info & BLE_GAP_REPORT_INFO_COMPLETE_BIT)) return;

    // Return if vendor address doesn't match
    if(!matches_bd_vendor(ind->trans_addr.addr.addr)) return;

    print_bd_addr(ind->trans_addr.addr.addr);

    // TODO: something with RSSI and close enough and average over small time interval for accuracy
    double measuredPower = -80;
    double N = 2;
    double distance = pow(10, (measuredPower - (double)ind->rssi) / (10 * N));
    ATM_LOG(D, "RSSI: %d Distance: %f", ind->rssi, distance);
    if(tmpCounter++ < maxCount) {
        totalDist += distance;
    } else {
        ATM_LOG(D, "Avg Distance is %f", (totalDist / maxCount));
        totalDist = 0;
        tmpCounter = 0;
    }
    
    // Parse lunch data
    nvds_lunch_data_t lunch_data = {0};
    bool success = try_parse_lunch_data(ind->data, ind->length, &lunch_data);

    if (!success) {
        ATM_LOG(E, "Error - Could not parse lunch data");
        return;
    }

    if(student_is_checked_in(lunch_data)) {
        ATM_LOG(D, "Student is already checked in");
        return;
    }

    check_in_student(lunch_data);
    ATM_LOG(W, "Checked in %s", lunch_data.student_id);
}

static void gap_init_cfm(ble_err_code_t status)
{
    app_env.adv_act_idx = ATM_INVALID_SCANIDX;
    app_env.scan_act_idx = ATM_INVALID_SCANIDX;

    atm_asm_move(S_TBL_IDX, OP_GAP_INIT_CFM);   
}

static void gap_conn_ind()
{

}

/*
 * SCAN CALLBACKS
 *******************************************************************************
 */

static void scan_create_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    app_env.scan_act_idx = inst_idx;
    atm_asm_move(S_TBL_IDX, OP_CREATE_SCAN_CFM);
}

static void scan_start_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    app_env.scan_act_idx = inst_idx;
    ASSERT_INFO(status == BLE_ERR_NO_ERROR, inst_idx, status);
    atm_asm_move(S_TBL_IDX, OP_START_SCAN_CFM);
}

static void scan_stop_ind(uint8_t inst_idx, ble_err_code_t status)
{
    // TODO: we probably want to restart the scan here
    ATM_LOG(D, "Restarting scan");
    atm_asm_move(S_TBL_IDX, OP_SCAN_STOPPED_START_ADV);
}

/*
 * STATIC FUNCTIONS
 *******************************************************************************
 */

static void adv_state_change(atm_adv_state_t state, uint8_t act_idx, ble_err_code_t status)
{
    ATM_LOG(D, "adv_state = %d", state);
    switch (state) {
        case ATM_ADV_CREATED: {
            ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);
            app_env.adv_act_idx = act_idx;
            atm_asm_move(S_TBL_IDX, OP_CREATE_ADV_CFM);
        } break;
        case ATM_ADV_ON: {
            ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);
            atm_asm_move(S_TBL_IDX, OP_START_ADV_CFM);
        } break;
        case ATM_ADV_OFF: {
            if(adv_time_csec) sw_timer_clear(tid_adv_timer);
            atm_asm_move(S_TBL_IDX, OP_ADV_OFF_IND);
        } break;
        case ATM_ADV_DELETED: {
            atm_asm_move(S_TBL_IDX, OP_ADV_DELETE_CFM);
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
static void adv_timer(uint8_t idx, void const *ctx)
{
    atm_asm_move(S_TBL_IDX, OP_ADV_TIMEOUT);
}

/**
 * @brief Load advertisement related parameters from NVDS.
 * @note Called upon GAP initialization.
 */
static void adv_load_nvds(void)
{
    if(!atm_adv_create_param_nvds(false, app_env.create)) {
        ATM_LOG(W, "Failed to load adv create params from NVDS. Using Default");
        app_env.create = atm_adv_create_param_get(0);
    }

    if(!atm_adv_start_param_nvds(app_env.start)) {
        ATM_LOG(W, "Failed to load adv start params from NVDS. Using Default");
        app_env.start = atm_adv_start_param_get(0);
    }

    nvds_tag_len_t adv_dur_size = sizeof(adv_time_csec);
    nvds_get(NVDS_TAG_ADV_DURATION, &adv_dur_size, (uint8_t *)&adv_time_csec);

    ATM_LOG(D, "BLE adv duration: %dms", adv_time_csec * 10);

    if(adv_time_csec) {
        tid_adv_timer = sw_timer_alloc(adv_timer, NULL);
    }
}

/*
 * STATE MACHINE
 *******************************************************************************
 */

/**
 * @brief Load advertisement related parameters and trigger GAP initialization.
 * @note Called upon module initialization.
 */
static void lunch_ble_init(void)
{
    atm_ble_set_advint(1000); // 1 second interval between different adv channels
    adv_load_nvds();

    atm_gap_prf_reg(BLE_HOGPD_MODULE_NAME, lunch_hogp_param());

    // Initialize GAP
    static atm_gap_cbs_t const gap_callbacks = {
        .ext_adv_ind = gap_ext_adv_ind,
        .init_cfm = gap_init_cfm,
        .conn_ind = NULL,
        .disc_ind = NULL,
        .pair_req_ind = NULL,
        .pair_numeric_ind = NULL,
        .pair_ind = NULL,
        .conn_param_updated_ind = NULL,
    };
    atm_gap_start(atm_gap_param_get(), &gap_callbacks);
}

/**
 * @brief Create scan activity. Results in a state machine
 * transition to S_SCAN_CREATING.
 * @note Called when GAP is initilized.
 */
static void lunch_create_scan(void)
{
    // Scan callbacks
    static atm_scan_cbs_t const scan_callbacks = {
        .scan_create_cfm = scan_create_cfm,
        .scan_start_cfm = scan_start_cfm,
        .scan_stop_ind = scan_stop_ind,
    };
    atm_scan_err_t ret = atm_scan_create(BLE_OWN_STATIC_ADDR, &scan_callbacks);
    if (ret != SCAN_ERR_NO_ERROR) {
	    ATM_LOG(E, "%s Fail to create scan %d", __func__, ret);
    }
}

/**
 * @brief Register advertisement state change callback and create
 * advertisement. Results in a state machine transition to S_ADV_STARTING.
 * @note Called when the scan activity was created.
 */
static void lunch_create_adv(void)
{
    // Register advertisement callbacks
    atm_adv_reg(adv_state_change);
    
    ble_err_code_t ret = atm_adv_create(app_env.create);
    if (ret != BLE_ERR_NO_ERROR) {
        ATM_LOG(E, "%s Fail to create adv with status %d", __func__, ret);
    }
}

/**
 * @brief Start to turn on advertisement. Results in a state machine
 * transition to S_ADV_STARTING.
 * @note Called when the advertisement was created.
 */
static void lunch_start_adv(void)
{
    ble_err_code_t ret = atm_adv_start(app_env.adv_act_idx, app_env.start);
    if (ret != BLE_ERR_NO_ERROR) {
        ATM_LOG(E, "%s Fail to start adv with status %d", __func__, ret);
    }
}

/**
 * @brief Advertisement on. Results in a state machine
 * transition to S_ADV_STARTED.
 * @note Called when the advertisement is turned-on.
 */
static void lunch_adv_on(void)
{
    ATM_LOG(V, "%s", __func__);

    atm_asm_set_state_op(S_TBL_IDX, S_ADV_STARTED, OP_END);

    if(adv_time_csec) {
        sw_timer_set(tid_adv_timer, adv_time_csec);
    }
}

/**
 * @brief Stop advertising. Results in a state machine
 * transition to S_ADV_STOPPING.
 * @note Called when the advertisement sw timer has expired.
 */
static void lunch_stop_adv(void)
{
    ble_err_code_t ret = atm_adv_stop(app_env.adv_act_idx);
    if (ret != BLE_ERR_NO_ERROR) {
	    ATM_LOG(E, "%s Fail to stop adv with status %d", __func__, ret);
    }
}

/**
 * @brief Get scan parameters and start to scan. Results in a state machine
 * transition to S_SCAN_STARTING.
 * @note Called when the advertisement has been stopped.
 */
static void lunch_start_scan(void)
{
    atm_scan_params_t start_params;
    atm_get_nvds_scan_params(&start_params);

    atm_scan_err_t ret = atm_scan_start(app_env.scan_act_idx, &start_params);
    if (ret != SCAN_ERR_NO_ERROR) {
        ATM_LOG(E, "%s Fail to start scan with status %d", __func__, ret);
    }
}

/**
 * @brief Scan on. Results in a state machine
 * transition to S_SCAN_ON.
 * @note Called when the scan activity is turned-on.
 */
static void lunch_scan_on(void)
{
    ATM_LOG(V, "%s", __func__);
    atm_asm_set_state_op(S_TBL_IDX, S_SCAN_ON, OP_END);
}

/**
 * @brief Delete advertisement activity. Results in a state machine
 * transition to S_ADV_DELETING.
 * @note Called when the scan has stopped and tries to recreate
 * new advertisement.
 */
static void lunch_delete_adv(void)
{
    ble_err_code_t ret = atm_adv_delete(app_env.adv_act_idx);
    if (ret != BLE_ERR_NO_ERROR) {
	    ATM_LOG(E, "%s Fail to delete adv %#x", __func__, ret);
    }
}

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
    {S_OP(S_INIT, OP_MODULE_INIT), S_GAP_INITIATING, lunch_ble_init},
    {S_OP(S_GAP_INITIATING, OP_GAP_INIT_CFM), S_SCAN_CREATING, lunch_create_scan},
	{S_OP(S_SCAN_CREATING, OP_CREATE_SCAN_CFM), S_ADV_CREATING, lunch_create_adv},
	{S_OP(S_ADV_CREATING, OP_CREATE_ADV_CFM), S_ADV_STARTING, lunch_start_adv},
	{S_OP(S_ADV_STARTING, OP_START_ADV_CFM), S_ADV_STARTED, lunch_adv_on},
	{S_OP(S_ADV_STARTED, OP_ADV_TIMEOUT), S_ADV_STOPPING, lunch_stop_adv},
	{S_OP(S_ADV_STOPPING, OP_ADV_OFF_IND), S_SCAN_STARTING, lunch_start_scan},
	{S_OP(S_ADV_STARTED, OP_ADV_OFF_IND), S_SCAN_STARTING, lunch_start_scan},
	{S_OP(S_SCAN_STARTING, OP_START_SCAN_CFM), S_SCAN_ON, lunch_scan_on},
	{S_OP(S_SCAN_ON, OP_SCAN_STOPPED_START_ADV), S_ADV_STARTING, lunch_start_adv},
	{S_OP(S_SCAN_ON, OP_SCAN_STOPPED_RECREATE_ADV), S_ADV_DELETING, lunch_delete_adv},
	{S_OP(S_ADV_DELETING, OP_ADV_DELETE_CFM), S_ADV_CREATING, lunch_create_adv},
};

/**
 * @brief Initialize the app data structures and start its state machine
 * @note Called after the platform drivers have initialized
 */
static rep_vec_err_t user_appm_init(void) 
{
    atm_asm_init_table(S_TBL_IDX, s_tbl, ARRAY_LEN(s_tbl));
    atm_asm_set_state_op(S_TBL_IDX, S_INIT, OP_MODULE_INIT);
    atm_asm_move(S_TBL_IDX, OP_MODULE_INIT);

    return RV_DONE;
}

int main(void)
{
    RV_APPM_INIT_ADD_LAST(user_appm_init);
 
    ATM_LOG(D, "user_main() done");
    return 0;
}
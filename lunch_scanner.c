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

static void gap_conn_ind(uint8_t conidx, atm_connect_info_t *param)
{
    atm_gap_connect_accept(conidx);
    atm_ble_set_con_txpwr(conidx, 0);
    atm_gap_print_conn_param(param);

    atm_asm_move(S_TBL_IDX, OP_CONNECTED);
}

static void gap_disc_ind(uint8_t conidx, ble_gap_ind_discon_t *param)
{

}

static atm_gap_cbs_t const gap_callbacks = {
    .ext_adv_ind = gap_ext_adv_ind,
    .init_cfm = gap_init_cfm,
    .conn_ind = gap_conn_ind,
    .disc_ind = gap_disc_ind,
    .pair_req_ind = NULL,
    .pair_numeric_ind = NULL,
    .pair_ind = NULL,
    .conn_param_updated_ind = NULL,
    .init_cfm = NULL,
};

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
    atm_asm_move(S_TBL_IDX, OP_RESTART_SCAN);
}

/*
 * STATIC FUNCTIONS
 *******************************************************************************
 */

/**
 * @brief Load adv and scan parameters and set them into GAP layer.
 * @note Called when the advertisement activity is created.
 */
static void adv_create_cfm(uint8_t act_idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);

    app_env.adv_act_idx = act_idx;
    app_env.adv_data = atm_adv_advdata_param_get(0);

    {
        ble_err_code_t ret = atm_adv_set_data_sanity(app_env.create, app_env.adv_data, NULL);
        if(ret != BLE_ERR_NO_ERROR) {
            ATM_LOG(E, "%s: Set data sanity failed: %#x", __func__, ret);
            return;
        }
    }

    if(app_env.adv_data) {
        ble_err_code_t ret = atm_adv_set_adv_data(act_idx, app_env.adv_data);
        if(ret != BLE_ERR_NO_ERROR) {
            ATM_LOG(E, "%s: Set adv data failed: %#x", __func__, ret);
	        return;
        }
    }
    
    atm_asm_move(S_TBL_IDX, OP_CREATE_ADV_CFM);
}

static void adv_state_change(atm_adv_state_t state, uint8_t act_idx, ble_err_code_t status)
{
    ATM_LOG(D, "adv_state = %d", state);
    switch (state) {
        case ATM_ADV_CREATED: {
            ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);
            app_env.adv_act_idx = act_idx;
            adv_create_cfm(act_idx, status);
        } break;
        case ATM_ADV_ON: {
            ASSERT_INFO(status == BLE_ERR_NO_ERROR, act_idx, status);
            atm_asm_move(S_TBL_IDX, OP_START_ADV_CFM);
        } break;
        case ATM_ADV_OFF: {
            ATM_LOG(E, "TODO: Restart adv, I'm too lazy");
            atm_asm_move(S_TBL_IDX, OP_STOP_ADV_CFM);
        } break;
        case ATM_ADV_DELETED:
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
 * @brief Load advertisement related parameters from NVDS.
 * @note Called upon GAP initialization.
 */
static void adv_load_nvds(void)
{
    app_env.create = atm_adv_create_param_get(0);
    app_env.start = atm_adv_start_param_get(0);

    nvds_tag_len_t adv_dur_size = sizeof(adv_time_csec);
    nvds_get(NVDS_TAG_ADV_DURATION, &adv_dur_size, (uint8_t *)&adv_time_csec);

    ATM_LOG(D, "BLE adv duration: %dms", adv_time_csec * 10);
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
 * @brief Delete advertisement activity. Results in a state machine
 * transition to S_ADV_DELETING.
 * @note Called when the scan has stopped and tries to recreate
 * new advertisement.
 */
static void lunch_stop_adv(void)
{
    ble_err_code_t ret = atm_adv_stop(app_env.adv_act_idx);
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
     * Step 5: Connect to PC
     * Step 6: Delete adv
     * Step 7: Start scan
     * Step 8: Scan timeout, Restart
     */
static state_entry const s_tbl[] = {
    // Initialize module
    {S_OP(S_INIT, OP_MODULE_INIT), S_GAP_INITIATING, lunch_ble_init},
    // Create scan
    {S_OP(S_GAP_INITIATING, OP_GAP_INIT_CFM), S_SCAN_CREATING, lunch_create_scan},
    // Create adv
	{S_OP(S_SCAN_CREATING, OP_CREATE_SCAN_CFM), S_ADV_CREATING, lunch_create_adv},
    // Start adv after we create adv
	{S_OP(S_ADV_CREATING, OP_CREATE_ADV_CFM), S_ADV_STARTING, lunch_start_adv},
    // Wait for connection
	{S_OP(S_ADV_STARTING, OP_START_ADV_CFM), S_ADV_STARTED, NULL},
    // We are connected, delete adv
    {S_OP(S_ADV_STARTED, OP_CONNECTED), S_ADV_STOPPING, lunch_stop_adv},
    // Start the scan after we delete adv
    {S_OP(S_ADV_STOPPING, OP_STOP_ADV_CFM), S_SCAN_STARTING, lunch_start_scan},
    // Start scan after we are connected
	{S_OP(S_SCAN_STARTING, OP_START_SCAN_CFM), S_SCAN_ON, NULL},
    // Start scan again
	{S_OP(S_SCAN_ON, OP_RESTART_SCAN), S_SCAN_STARTING, lunch_start_scan},
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
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
#include "app_diss.h"

// My stuff
#include "app_config.h"
#include "lunch_scanner.h"
#include "lunch_parser.h"
#include "lunch_manager.h"
#include "lunch_hogp.h"
#include "lunch_gap.h"

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

static sw_timer_id_t tid_lunch_idle;

/*
 * STATIC FUNCTIONS
 *******************************************************************************
 */

static void lunch_idle_timer_msg_ind(sw_timer_id_t idx, void const *ctx)
{
    ATM_LOG(D, "IDLE timer");

    if (lunch_hogp_state() == BLE_HOGPD_READY) {
	    ATM_LOG(N, "Ignore idle cuz I don't wanna disconnect!");
        //lunch_asm_move(OP_DISCONNING);
    } else if (lunch_hogp_state() == BLE_HOGPD_ENABLED) {
	    ATM_LOG(N, "HID not ready for a long time\n");
        lunch_asm_move(OP_DISCONNING);
    } else {
	    lunch_gap_discoverable(false);
    }

}

/*
 * STATE MACHINE
 *******************************************************************************
 */

static void lunch_s_init(void) 
{
    // Register Profiles
    atm_gap_prf_reg(BLE_HOGPD_MODULE_NAME, lunch_hogp_param());
    atm_gap_prf_reg(BLE_DISS_MODULE_NAME, app_dis_param());

    // Init GAP
    lunch_gap_init();

    // Setup timers for connection timeout
    tid_lunch_idle = sw_timer_alloc(lunch_idle_timer_msg_ind, NULL);
}

static void lunch_s_connected(void)
{
    ATM_LOG(D, "lunch connected callback");
    // Set connection ready timeout
    sw_timer_set(tid_lunch_idle, KBD_CONNECTION_READY_TIMEOUT_CS);
}

static void lunch_s_disconnected(void)
{
    // Clear connection timeout
    sw_timer_clear(tid_lunch_idle);
}

static void lunch_s_hid_ready(void)
{
    // Set connection idle timeout
    sw_timer_set(tid_lunch_idle, KBD_CONNECTION_IDLE_TIMEOUT_CS);

    lunch_gap_nego_parameter();
    lunch_gap_local_slave_latency(false);

    // Start scanning
    lunch_gap_asm_move(GAP_OP_START_SCAN);
}

static void lunch_s_disc_restart(void)
{
    sw_timer_clear(tid_lunch_idle);

    lunch_gap_discoverable(true);
}

static void lunch_s_discing(void)
{
    sw_timer_clear(tid_lunch_idle);
    lunch_gap_disconnect();
}

static void lunch_s_scan_timeout(void)
{
    // if HID is still ready then start another scan
    if(lunch_hogp_state() == BLE_HOGPD_READY) {
        lunch_gap_asm_move(GAP_OP_START_SCAN);
    }
}

static state_entry const s_tbl[] = {
    {S_OP(S_BOOTED, OP_INITING), S_INITING, lunch_s_init},
    {S_OP(S_IDLE, OP_RECONNING), S_RECONNING, NULL},
    {S_OP(S_IDLE, OP_PAIRING), S_PAIRING, NULL},
    {S_OP(S_INITING, OP_INIT_DONE), S_IDLE, NULL,},
    {S_OP(S_INITING, OP_RECONNING), S_RECONNING, NULL},
    {S_OP(S_INITING, OP_PAIRING), S_PAIRING, NULL},
    {S_OP(S_RECONNING, OP_CONNECTED), S_CONNECTED, lunch_s_connected},
    {S_OP(S_RECONNING, OP_RECONN_FAIL), S_IDLE, NULL},
    {S_OP(S_RECONNING, OP_ADV_STOPPED), S_IDLE, NULL},
    {S_OP(S_PAIRING, OP_CONNECTED), S_PAIRING, NULL},
    {S_OP(S_PAIRING, OP_DISCONNED), S_IDLE, lunch_s_disconnected},
    {S_OP(S_PAIRING, OP_PAIR_FAIL), S_CONNECTED, NULL},
    // These two states happen after pairing fail.
    {S_OP(S_CONNECTED, OP_PAIR_FAIL), S_CONNECTED, NULL},
    {S_OP(S_IDLE, OP_DISCONNED), S_IDLE, lunch_s_disconnected},
    {S_OP(S_IDLE, OP_PAIR_FAIL), S_IDLE, NULL},
    // This is repaired.
    {S_OP(S_CONNECTED, OP_PAIR_SUCCESS), S_CONNECTED, NULL},
    {S_OP(S_PAIRING, OP_PAIR_SUCCESS), S_CONNECTED, NULL},
    {S_OP(S_PAIRING, OP_ADV_STOPPED), S_IDLE, NULL},
    {S_OP(S_CONNECTED, OP_HID_READY), S_HID_READY, lunch_s_hid_ready},
    {S_OP(S_CONNECTED, OP_DISCONNED), S_IDLE, lunch_s_disc_restart},
    {S_OP(S_CONNECTED, OP_DISCONNING), S_DISCONNING,  lunch_s_discing},
    {S_OP(S_HID_READY, OP_DISCONNING), S_DISCONNING,  lunch_s_discing},
    {S_OP(S_HID_READY, OP_DISCONNED), S_IDLE,  lunch_s_disc_restart},
    {S_OP(S_DISCONNING, OP_DISCONNED), S_IDLE, lunch_s_disconnected},
    // Scan after HID_READY
    {S_OP(S_HID_READY, OP_SCAN_STARTED), S_SCANNING, NULL},
    {S_OP(S_SCANNING, OP_SCAN_TIMEOUT), S_HID_READY, lunch_s_scan_timeout},
};

/*
 * PUBLIC FUNCTIONS
 *******************************************************************************
 */

void lunch_asm_move(ASM_O OP) {
    ATM_LOG(V, "Lunch OP: %d", OP);
    atm_asm_move(S_TBL_IDX, OP);
}

/**
 * @brief Initialize the app data structures and start its state machine
 * @note Called after the platform drivers have initialized
 */
static rep_vec_err_t user_appm_init(void) 
{
    // Setup state machine
    atm_asm_init_table(S_TBL_IDX, s_tbl, ARRAY_LEN(s_tbl));
    atm_asm_set_state_op(S_TBL_IDX, S_BOOTED, OP_INITING);
    lunch_asm_move(OP_INITING);

    return RV_DONE;
}

int main(void)
{
    RV_APPM_INIT_ADD_LAST(user_appm_init);
 
    ATM_LOG(D, "user_main() done");
    return 0;
}
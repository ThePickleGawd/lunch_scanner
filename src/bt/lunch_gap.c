// Config
#include "app_config.h"
#include "cfg_gap_params.h"

// Drivers
#include <math.h>
#include "atm_gap_param.h"
#include "atm_scan_param.h"
#include "atm_adv_param.h"
#include "atm_asm.h"
#include "sw_timer.h"
#include "atm_adv.h"
#include "atm_ble.h"
#include "ble_hogpd.h"
#include "ble_gap_sec.h"

// My stuff
#include "lunch_scanner.h"
#include "lunch_parser.h"
#include "lunch_manager.h"
#include "lunch_hogp.h"
#include "lunch_gap.h"

ATM_LOG_LOCAL_SETTING("lunch_gap", D);

/*
 * DEFINES & VARIABLES
 *******************************************************************************
 */

#define GAP_S_TBL_IDX 1

static bool is_pairing;
static bool force_conn_param;

static uint8_t cur_lidx = GAP_INVALID_CONIDX;
static uint8_t adv_act_idx = ATM_INVALID_ADVIDX;
static uint8_t scan_act_idx = ATM_INVALID_SCANIDX;
static uint8_t auth_val;

static int8_t bond_slot;

/*
 * FUNCTION DECLARATIONS
 *******************************************************************************
 */

static void lunch_gap_update_bond_information(void);

/*
 * GAP ADV CONFIRMATION CALLBACKS
 *******************************************************************************
 */

static void lunch_start_adv(void)
{
    ATM_LOG(V, "%s", __func__);

    ble_err_code_t ret = atm_adv_start(adv_act_idx, atm_adv_start_param_get(is_pairing ? ADV1_PAIR : ADV0_RECONN));
    if (ret != BLE_ERR_NO_ERROR) {
        ATM_LOG(E, "%s Fail to start adv with status %d", __func__, ret);
    }
}

static void lunch_gap_adv_create_cfm(uint8_t idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    if(!is_pairing && (atm_adv_create_param_get(ADV0_RECONN)->adv_param.prop & ADV_PROP_DIRECTED_BIT)) {
        adv_act_idx = idx;
        lunch_start_adv();
    } else {
        adv_act_idx = idx;
        atm_adv_set_adv_data(adv_act_idx, atm_adv_advdata_param_get(is_pairing));
    }
}

static void lunch_gap_set_adv_data_cfm(uint8_t idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    if(!is_pairing) {
        lunch_start_adv();
    } else {
        atm_adv_set_scan_data(adv_act_idx, atm_adv_scandata_param_get(ADV1_PAIR));
    }
}

static void lunch_gap_set_scan_data_cfm(uint8_t idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    lunch_start_adv();
}

static void lunch_gap_adv_start_cfm(uint8_t idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    ASSERT_INFO(status == BLE_ERR_NO_ERROR, idx, status);

    lunch_gap_asm_move(is_pairing ? GAP_OP_ADV1ING : GAP_OP_ADV0ING);
}

static void lunch_gap_adv_stop_ind(uint8_t idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    if (idx != GAP_INVALID_CONIDX) {
        if (status == BLE_GAP_ERR_TIMEOUT) {
            lunch_gap_asm_move(GAP_OP_ADV_STOP_TOUT);
        } else {
            lunch_gap_asm_move(GAP_OP_ADV_STOP);
        }
    }
}

// adv callback
static void adv_state_change(atm_adv_state_t state, uint8_t act_idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    ATM_LOG(D, "%s: act_idx=%d adv_state=%d", __func__, act_idx, state);


    switch (state) {
	case ATM_ADV_CREATING:
	case ATM_ADV_ADVDATA_SETTING:
	case ATM_ADV_SCANDATA_SETTING:
	case ATM_ADV_STARTING:
	case ATM_ADV_STOPPING:
	case ATM_ADV_DELETING:
	    ATM_LOG(E, "Error adv_state = %d, status = %d", state, status);
	    break;
	case ATM_ADV_CREATED:
	    lunch_gap_adv_create_cfm(act_idx, status);
	    break;
	case ATM_ADV_ADVDATA_DONE:
	    lunch_gap_set_adv_data_cfm(act_idx, status);
	    break;
	case ATM_ADV_SCANDATA_DONE:
	    lunch_gap_set_scan_data_cfm(act_idx, status);
	    break;
	case ATM_ADV_ON:
	    lunch_gap_adv_start_cfm(act_idx, status);
	    break;
	case ATM_ADV_OFF:
	    lunch_gap_adv_stop_ind(act_idx, status);
	    break;
	case ATM_ADV_DELETED:
    case ATM_ADV_IDLE:
	default:
	    break;
    }
}

/*
 * GAP CALLBACKS
 *******************************************************************************
 */


static void gap_ext_adv_ind(ble_gap_ind_ext_adv_report_t const *ind)
{
    ATM_LOG(V, "%s", __func__);

    // Return if report is not complete
    if(!(ind->info & BLE_GAP_REPORT_INFO_COMPLETE_BIT)) return;

    // Return if vendor address doesn't match
    if(!matches_bd_vendor(ind->trans_addr.addr.addr)) return;

    print_bd_addr(ind->trans_addr.addr.addr);

    ATM_LOG(D, "RSSI: %d", ind->rssi);
    
    // Parse lunch data
    nvds_lunch_data_t lunch_data = {0};
    bool success = try_parse_lunch_data(ind->data, ind->length, &lunch_data);

    if (!success) {
        ATM_LOG(E, "Error - Could not parse lunch data");
        return;
    }

    receive_rssi(lunch_data, ind->rssi);

    if(student_is_checked_in(lunch_data)) {
        ATM_LOG(V, "Student is already checked in");
        return;
    }

    check_in_student(lunch_data);
    ATM_LOG(W, "Checked in %s", lunch_data.student_id);
}

static void gap_init_cfm(ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    if (status != BLE_ERR_NO_ERROR) {
        ASSERT_ERR(0);
    }

    atm_ble_set_txpwr_max(CFG_ADV0_CREATE_MAX_TX_POWER);
    lunch_gap_asm_move(GAP_OP_INITED);
}

static void gap_conn_ind(uint8_t conidx, atm_connect_info_t *param)
{
    ATM_LOG(V, "%s", __func__);

    cur_lidx = conidx;

    atm_gap_connect_accept(conidx);
    atm_ble_set_con_txpwr(conidx, 0);
    atm_gap_print_conn_param(param);

    lunch_gap_asm_move(GAP_OP_CONNECTED);
}

static void gap_disc_ind(uint8_t conidx, ble_gap_ind_discon_t const *param)
{
    ATM_LOG(V, "%s", __func__);

    // Possibility of is_pairing from true to false since we just bond and peer
    // turn off bluetooth or disconnect intentionally
    if (is_pairing) {
        lunch_gap_update_bond_information();
    }

    lunch_gap_asm_move(GAP_OP_DISCONNECTED);
}

static void lunch_gap_pair_rsp(uint8_t conidx, bool accept, ble_gap_auth_t auth_req)
{
    ATM_LOG(V, "%s", __func__);

     ble_gap_sec_pairing_param_t rsp = {
	    .auth = (auth_req & BLE_GAP_AUTH_SEC_CON) ?
	        BLE_GAP_AUTH_REQ_NO_MITM_SEC_CON_BOND :
	        BLE_GAP_AUTH_REQ_NO_MITM_BOND,
	    .iocap = BLE_GAP_IO_CAP_NO_INPUT_NO_OUTPUT,
	    .key_size = BLE_GAP_KEY_LEN,
	    .oob = false,
	    .ikey_dist = BLE_GAP_KDIST_ENCKEY | BLE_GAP_KDIST_IDKEY,
	    .rkey_dist = BLE_GAP_KDIST_ENCKEY | BLE_GAP_KDIST_IDKEY
    };

    ble_gap_sec_pairing_rsp(conidx, accept, &rsp, BLE_GAP_NO_SEC);
}

static void cb_already_bonded(uint8_t conidx, int8_t bond_idx, void const *ctx)
{
    ATM_LOG(V, "%s", __func__);

    bool accept = true;
    if (bond_idx == bond_slot) {
        ATM_LOG(N, "Re-Pairing");
    } else if (is_pairing && (bond_idx == BLE_GAP_INVALID_BOND)) {
        ATM_LOG(N, "New pairing");
    } else {
        accept = false;
        if (is_pairing || (bond_idx != BLE_GAP_INVALID_BOND)) {
            ATM_LOG(W, "Device was bonded in [Fn + %d]", bond_idx + 1);
        } else {
            ATM_LOG(W, "Reconnecting...");
        }
    }

    lunch_gap_pair_rsp(conidx, accept, auth_val);
}

static void gap_pair_req_ind(uint8_t conidx, ble_gap_auth_t auth_req)
{
    ATM_LOG(V, "%s", __func__);

    auth_val = auth_req;
    ble_gap_sec_check_bonded(conidx, cb_already_bonded, NULL);
}

static void gap_pair_numeric_ind(uint8_t conidx, uint32_t number)
{
    ATM_LOG(V, "%s", __func__);

    ATM_LOG(D, "nc data = %" PRIu32, number);

    // Always confirm
    ble_gap_sec_number_rsp(conidx, true);
}

static void gap_pair_ind(uint8_t conidx, ble_gap_ind_le_pair_end_t const *ind)
{
    ATM_LOG(V, "%s", __func__);

    if (!ind->reason) {
        lunch_asm_move(OP_PAIR_SUCCESS);
    } else {
        lunch_asm_move(OP_PAIR_FAIL);
    }
}

static void lunch_gap_conn_param_updated_ind(uint8_t conidx)
{
    ATM_LOG(V, "%s", __func__);

    // Print debug info
    atm_connect_info_t *info = atm_gap_get_connect_info(conidx);
    atm_gap_print_conn_param(info);

    if (force_conn_param) {
	    lunch_gap_nego_parameter();
    }
}

static atm_gap_cbs_t const gap_callbacks = {
    .ext_adv_ind = gap_ext_adv_ind,
    .init_cfm = gap_init_cfm,
    .conn_ind = gap_conn_ind,
    .disc_ind = gap_disc_ind,
    .pair_req_ind = gap_pair_req_ind,
    .pair_numeric_ind = gap_pair_numeric_ind,
    .pair_ind = gap_pair_ind,
    .conn_param_updated_ind = lunch_gap_conn_param_updated_ind,
};

/*
 * SCAN CALLBACKS
 */

static void scan_create_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    scan_act_idx = inst_idx;
}

static void scan_start_cfm(uint8_t inst_idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    scan_act_idx = inst_idx;
    ASSERT_INFO(status == BLE_ERR_NO_ERROR, inst_idx, status);
    
    lunch_gap_asm_move(GAP_OP_SCAN_STARTED);
    lunch_asm_move(OP_SCAN_STARTED);
}

static void scan_stop_ind(uint8_t inst_idx, ble_err_code_t status)
{
    ATM_LOG(V, "%s - Restarting scan...", __func__);

    lunch_gap_asm_move(GAP_OP_SCAN_TIMEOUT);
    lunch_asm_move(OP_SCAN_TIMEOUT);
}

static void lunch_create_scan(void)
{
    ATM_LOG(V, "%s", __func__);

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

static void lunch_start_scan(void)
{
    ATM_LOG(V, "%s", __func__);

    atm_scan_params_t start_params;
    atm_get_nvds_scan_params(&start_params);

    atm_scan_err_t ret = atm_scan_start(scan_act_idx, &start_params);
    if (ret != SCAN_ERR_NO_ERROR) {
        ATM_LOG(E, "%s Fail to start scan with status %d", __func__, ret);
    }
}

/*
 * STATE MACHINE
 *******************************************************************************
 */

static void lunch_gap_s_init(void)
{
    ATM_LOG(V, "%s", __func__);

    lunch_gap_update_bond_information();

    if (!is_pairing) {
        ble_gap_bdaddr_t addr;
        ble_gap_sec_get_last_bond_address(&addr);
        atm_adv_create_param_get(ADV0_RECONN)->adv_param.peer_addr = addr;
    }

    ATM_LOG(D, "[%d] %s", bond_slot + 1, is_pairing ? "Pairing" : "Reconnecting");

    // Register ADV Stuff
    atm_adv_reg(&adv_state_change);
    atm_adv_create(atm_adv_create_param_get(is_pairing ? ADV1_PAIR : ADV0_RECONN));
    ble_gap_set_fix_bond_idx(bond_slot);

    // Register Scan Stuff
    lunch_create_scan();

    lunch_asm_move(OP_INIT_DONE);
}

static void lunch_gap_s_adv0_reconning(void) { lunch_asm_move(OP_RECONNING); }
static void lunch_gap_s_adv1_pairing(void) { lunch_asm_move(OP_PAIRING); }
static void lunch_gap_s_adv0_stop_reconning(void) { lunch_asm_move(OP_RECONN_FAIL); }
static void lunch_gap_s_adv1_stop_reconning(void) { lunch_asm_move(OP_PAIR_FAIL); }
static void lunch_gap_s_adv_stop(void) { lunch_asm_move(OP_ADV_STOPPED); }
static void lunch_gap_s_disc(void) { lunch_asm_move(OP_DISCONNED);}

static void lunch_gap_s_conn(void)
{
    ATM_LOG(D, "Connected callback");
    atm_gap_lower_slave_latency_locally(cur_lidx, 0);
    lunch_asm_move(OP_CONNECTED);
}

static void lunch_gap_s_start_scan(void)
{
    ATM_LOG(V, "%s", __func__);

    lunch_start_scan();
}

static state_entry const gap_s_tbl[] = {
    {S_OP(GAP_S_INIT, GAP_OP_INITED), GAP_S_IDLE, lunch_gap_s_init},
    {S_OP(GAP_S_INIT, GAP_OP_ADV0ING), GAP_S_ADV0ING, lunch_gap_s_adv0_reconning},
    {S_OP(GAP_S_INIT, GAP_OP_ADV1ING), GAP_S_ADV1ING, lunch_gap_s_adv1_pairing},
    {S_OP(GAP_S_IDLE, GAP_OP_ADV0ING), GAP_S_ADV0ING, lunch_gap_s_adv0_reconning},
    {S_OP(GAP_S_IDLE, GAP_OP_ADV1ING), GAP_S_ADV1ING, lunch_gap_s_adv1_pairing},
    {S_OP(GAP_S_ADV0ING, GAP_OP_INITED), GAP_S_ADV0ING, NULL},
    {S_OP(GAP_S_ADV1ING, GAP_OP_INITED), GAP_S_ADV1ING, NULL},
    {S_OP(GAP_S_ADV0ING, GAP_OP_ADV_STOP_TOUT), GAP_S_IDLE, lunch_gap_s_adv0_stop_reconning},
    {S_OP(GAP_S_ADV1ING, GAP_OP_ADV_STOP_TOUT), GAP_S_IDLE, lunch_gap_s_adv1_stop_reconning},
    {S_OP(GAP_S_ADV1ING, GAP_OP_CONNECTED), GAP_S_CONNECTED, lunch_gap_s_conn},
    {S_OP(GAP_S_ADV0ING, GAP_OP_CONNECTED), GAP_S_CONNECTED, lunch_gap_s_conn},
    {S_OP(GAP_S_ADV1ING, GAP_OP_ADV_STOPPING), GAP_S_ADV_STOPPING, NULL},
    {S_OP(GAP_S_ADV0ING, GAP_OP_ADV_STOPPING), GAP_S_ADV_STOPPING, NULL},
    {S_OP(GAP_S_ADV_STOPPING, GAP_OP_ADV_STOP), GAP_S_IDLE, lunch_gap_s_adv_stop},
    {S_OP(GAP_S_CONNECTED, GAP_OP_DISCONNECTED), GAP_S_IDLE,  lunch_gap_s_disc},
    {S_OP(GAP_S_CONNECTED, GAP_OP_ADV_STOP), GAP_S_CONNECTED, NULL},
    {S_OP(GAP_S_CONNECTED, GAP_OP_START_SCAN), GAP_S_STARTING_SCAN, lunch_gap_s_start_scan},
    {S_OP(GAP_S_STARTING_SCAN, GAP_OP_SCAN_STARTED), GAP_S_SCANNING, NULL},
    {S_OP(GAP_S_SCANNING, GAP_OP_DISCONNECTED), GAP_S_IDLE, lunch_gap_s_disc},
    {S_OP(GAP_S_SCANNING, GAP_OP_SCAN_TIMEOUT), GAP_S_CONNECTED, NULL},
};

void lunch_gap_init(void)
{
    ATM_LOG(V, "%s", __func__);

    // Start GAP
    atm_gap_start(atm_gap_param_get(), &gap_callbacks);

    // Init state machine
    atm_asm_init_table(GAP_S_TBL_IDX, gap_s_tbl, ARRAY_LEN(gap_s_tbl));
    atm_asm_set_state_op(GAP_S_TBL_IDX, GAP_S_INIT, GAP_OP_INITING);
}

/*
 * GAP FUNCTIONS
 *******************************************************************************
 */

static void lunch_gap_update_bond_information(void)
{
    ATM_LOG(V, "%s", __func__);

    bond_slot = ble_gap_sec_get_last_bond_index();
    if(bond_slot == BLE_GAP_INVALID_BOND) {
        bond_slot = 0;
    }

    // Check whether we should pair or reconnect
    is_pairing = !((1 << bond_slot) & ble_gap_sec_get_bond_mask());
}

static void lunch_gap_reconnecting(void)
{
    ATM_LOG(V, "%s", __func__);

    if (atm_asm_get_current_state(GAP_S_TBL_IDX) == GAP_S_IDLE) {
	    atm_adv_start(adv_act_idx, atm_adv_start_param_get(ADV0_RECONN));
    }
}

static void lunch_gap_pairing(void)
{
    ATM_LOG(V, "%s", __func__);

    if (atm_asm_get_current_state(GAP_S_TBL_IDX) == GAP_S_IDLE) {
	    atm_adv_start(adv_act_idx, atm_adv_start_param_get(ADV1_PAIR));
    }
}

void lunch_gap_discoverable(bool enable)
{
    if (enable) {
        if (!is_pairing) {
            lunch_gap_reconnecting();
        } else {
            lunch_gap_pairing();
        }
        return;
    }

    if ((atm_asm_get_current_state(GAP_S_TBL_IDX) == GAP_S_ADV1ING ||
	atm_asm_get_current_state(GAP_S_TBL_IDX) == GAP_S_ADV0ING)) {
	atm_adv_stop(adv_act_idx);
	lunch_gap_asm_move(GAP_OP_ADV_STOPPING);
    }

}

void lunch_gap_disconnect(void)
{
    ATM_LOG(V, "%s", __func__);

    atm_gap_disconnect(cur_lidx, BLE_HCI_ERR_REMOTE_USER_TERM_CON);
}

// Declare function so that it can be used in the table
static void lunch_gap_param_nego_cfm(uint8_t conidx, ble_err_code_t status);

static atm_gap_param_nego_t const param_nego = {
    .param_nego_cfm = lunch_gap_param_nego_cfm,
    .force_retry = true,
    .retry_times = KBD_PARAM_NEGO_RETRY,
    .check_result = KBD_PARAM_NEGO_EACH_TIMEOUT_CS,
    .delay = KBD_PARAM_NEGO_DELAY_S,
    .target = &(ble_gap_conn_param_t const) {
	    .intv_min = CFG_GAP_CONN_INT_MIN,
	    .intv_max = CFG_GAP_CONN_INT_MAX,
	    .latency = CFG_GAP_PERIPH_LATENCY,
	    .time_out = CFG_GAP_CONN_TIMEOUT,
    }
};

void lunch_gap_nego_parameter(void)
{
    ATM_LOG(V, "%s", __func__);

    force_conn_param = true;
    atm_gap_connect_param_nego(cur_lidx, &param_nego);
}

static void lunch_gap_param_nego_cfm(uint8_t conidx, ble_err_code_t status)
{
    ATM_LOG(V, "%s", __func__);

    ATM_LOG(N, "param nego = %#x", status);
    if ((status == BLE_ERR_NO_ERROR) ||
	(status == BLE_HCI_ERR_UNACCEPTABLE_CONN_PARAM) ||
	(status == BLE_GAP_ERR_REJECTED)) {
	return;
    }

    atm_gap_connect_param_nego(cur_lidx, &param_nego);
}

void lunch_gap_local_slave_latency(bool disable)
{
    ATM_LOG(V, "%s", __func__);

    atm_gap_lower_slave_latency_locally(cur_lidx,
	disable ? 0 : atm_gap_get_connect_info(cur_lidx)->con_latency);
}

static void lunch_gap_delete_bond_callback(uint8_t conidx, int8_t bond_idx, void const *ctx)
{
    ATM_LOG(V, "%s", __func__);

    platform_reset(RESET_NO_ERROR);
}

void lunch_gap_remove_current_bond(void)
{
    ATM_LOG(V, "%s", __func__);
    
    ble_gap_bdaddr_t bdaddr;
    ble_gap_sec_get_last_bond_address(&bdaddr);
    ble_gap_sec_remove_bond(&bdaddr, lunch_gap_delete_bond_callback, NULL);
}

void lunch_gap_asm_move(ASM_O OP)
{
    ATM_LOG(V, "Lunch Gap OP: %d", OP);
    atm_asm_move(GAP_S_TBL_IDX, OP);
}
#pragma once

#include "atm_asm.h"

// GAP states
typedef enum {
    // Under initialization.
    GAP_S_INIT,
    // Initialized.
    GAP_S_IDLE,
    // Advertisement 0 started. (For pairing)
    GAP_S_ADV0ING,
    // Advertisement 1 started. (For reconnecting)
    GAP_S_ADV1ING,
    // Advertisement is stopping.
    GAP_S_ADV_STOPPING,
    // Link established.
    GAP_S_CONNECTED,
    // Starting scan
    GAP_S_STARTING_SCAN,
    // Scan started.
    GAP_S_SCANNING,
} lunch_gap_state_t;
// GAP operations or events.
typedef enum {
    // Start initialing.
    GAP_OP_INITING,
    // Just Initialized.
    GAP_OP_INITED,
    // Issue advertisment 0 starting.
    GAP_OP_ADV0ING,
    // Issue advertisment 1 starting.
    GAP_OP_ADV1ING,
    // Received advertisement stopped event with non-timeout reason.
    GAP_OP_ADV_STOP,
    // Received advertisement stopped event with timeout reason.
    GAP_OP_ADV_STOP_TOUT,
    // Issue curent advertisement stopping.
    GAP_OP_ADV_STOPPING,
    // Received connected event.
    GAP_OP_CONNECTED,
    // received disconnected event.
    GAP_OP_DISCONNECTED,
    // Issue start scan
    GAP_OP_START_SCAN,
    // Scan has started
    GAP_OP_SCAN_STARTED,
    // Scan timeout
    GAP_OP_SCAN_TIMEOUT,
} lunch_gap_op_t;

typedef enum {
    ADV0_RECONN,
    ADV1_PAIR
} lunch_adv_create_t;

typedef struct {
    __ATM_ADV_CREATE_PARAM_CONST atm_adv_create_t *create[CFG_GAP_ADV_MAX_INST];
    __ATM_ADV_START_PARAM_CONST atm_adv_start_t *start[CFG_GAP_ADV_MAX_INST];
    __ATM_ADV_DATA_PARAM_CONST atm_adv_data_t *adv_data[CFG_GAP_ADV_MAX_INST];
    __ATM_ADV_DATA_PARAM_CONST atm_adv_data_t *scan_data[CFG_GAP_ADV_MAX_INST];
    lunch_adv_create_t create_adv_idx;
    uint8_t adv_act_idx[CFG_GAP_ADV_MAX_INST];
} gap_env_t;


/**
 *******************************************************************************
 * @brief Bluetooth initialization.
 *******************************************************************************
 */
void lunch_gap_init(void);

/**
 *******************************************************************************
 * @brief Disconnect current link if have.
 *******************************************************************************
 */
void lunch_gap_disconnect(void);

/**
 *******************************************************************************
 * @brief Start or stop device advertisement.
 * @param[in] en True for enabling, otherwise for disabling.
 *******************************************************************************
 */
void lunch_gap_discoverable(bool en);

/**
 *******************************************************************************
 * @brief Negotiate current link parameter.
 *******************************************************************************
 */
void lunch_gap_nego_parameter(void);

/**
 *******************************************************************************
 * @brief Delete current bond slot and start to paired
 *******************************************************************************
 */
void lunch_gap_remove_current_bond(void);

/**
 *******************************************************************************
 * @brief Disable slave latency locally
 * @param[in] disable True for disabling slave latency. False for enabling slave
 * latency;
 *******************************************************************************
 */
void lunch_gap_local_slave_latency(bool disable);

/**
 *******************************************************************************
 * @brief Move gap state machine with OP
 * @param[in] OP Operation Code
 *******************************************************************************
 */
void lunch_gap_asm_move(ASM_O OP);
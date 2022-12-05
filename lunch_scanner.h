/**
 *******************************************************************************
 *
 * @file lunch_scanner.h
 *
 * @brief Lunch Scanner Application
 *
 * Copyright (C) Atmosic 2020
 *
 *******************************************************************************
 */

#pragma once

#define ATM_INVALID_SCANIDX 0xFF

typedef enum {
    S_INIT,
    S_IDLE,
    S_GAP_INITIATING,
    S_ADV_CREATING,
    S_SCAN_CREATING,
    S_ADV_STARTING,
    S_ADV_STARTED,
    S_ADV_STOPPING,
    S_ADV_DELETING,
    S_SCAN_STARTING,
    S_SCAN_ON,
} lunch_scanner_state_t;

typedef enum {
    OP_MODULE_INIT,
    OP_GAP_INIT_CFM,
    OP_CREATE_ADV_CFM,
    OP_START_ADV,
    OP_START_ADV_CFM,
    OP_ADV_TIMEOUT,
    OP_ADV_OFF_IND,
    OP_ADV_DELETE_CFM,
    OP_CREATE_SCAN_CFM,
    OP_START_SCAN,
    OP_START_SCAN_CFM,
    OP_SCAN_STOPPED_RECREATE_ADV,
    OP_SCAN_STOPPED_START_ADV,
    OP_RESTART_SCAN,
    OP_END = 0xFF
} lunch_scanner_op_t;

typedef struct {
    __ATM_ADV_CREATE_PARAM_CONST atm_adv_create_t *create;
    __ATM_ADV_START_PARAM_CONST atm_adv_start_t *start;
    uint8_t scan_act_idx;
    uint8_t adv_act_idx;
} app_env_t;

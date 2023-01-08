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

#include "atm_asm.h"

#define ATM_INVALID_SCANIDX 0xFF

typedef enum {
    S_BOOTED,
    S_INITING,
    S_IDLE,
    S_PAIRING,
    S_RECONNING,
    S_CONNECTED,
    S_HID_READY,
    S_SCANNING,
    S_DISCONNING
} lunch_scanner_state_t;

typedef enum {
    OP_INITING,
    OP_INIT_DONE,
    OP_RECONNING,
    OP_PAIRING,
    OP_RECONN_FAIL,
    OP_PAIR_FAIL,
    OP_PAIR_SUCCESS,
    OP_CONNECTED,
    OP_DISCONNED,
    OP_HID_READY,
    OP_HID_UNREADY,
    OP_SCAN_STARTED,
    OP_SCAN_TIMEOUT,
    OP_DISCONNING,
    OP_ADV_STOPPED,
    OP_NUM,
    OP_END = 0xFF
} lunch_scanner_op_t;

// Move the lunch state machine
void lunch_asm_move(ASM_O OP);

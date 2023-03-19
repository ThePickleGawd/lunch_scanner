/**
 *******************************************************************************
 *
 * @file cfg_adv_params.h
 *
 * @brief advertising configuration
 *
 * Copyright (C) Atmosic 2021
 *
 *******************************************************************************
 */
//***<<< Use Configuration Wizard in Context Menu >>>***

#pragma once

#include "ble_att.h"

// We want to be able to change adv params
#define CFG_ADV_CREATE_PARAM_CONST 0
#define CFG_ADV_START_PARAM_CONST 0
#define CFG_ADV_DATA_PARAM_CONST 0

// We want to adv forever
#define ADV_CONTINUOUS

#ifdef ADV_CONTINUOUS
#define ADV_DURATION 0
#elif
#define ADV_DURATION 6000
#endif

// Used by ADV payload
#define LUNCH_HID_ADV_DAT_NAME 0x0A, 0x08, 'L', 'u', 'n', 'c', 'h', 'T', 'r', 'a', 'k'
#define LUNCH_HID_ADV_DAT_UUID 0x03, 0x03, 0x12, 0x18
#define LUNCH_HID_ADV_DAT_APPEARANCE 0x03, 0x19, 0xC8, 0x03
#define LUNCH_HID_ADV_DAT_MANU 0x06, 0xFF, 0x24, 0x0A, 0x01, 0x04, 0x00

// ADV0 (for reconnection)
#define CFG_ADV0_OWNER_ADDR_TYPE BLE_OWN_STATIC_ADDR

// ADV0 create parameter
#define CFG_ADV0_CREATE_TYPE 0
#define CFG_ADV0_CREATE_PROPERTY ADV_LEGACY_UNDIR_CONN_MASK
#define CFG_ADV0_CREATE_CHNL_MAP ADV_ALL_CHNLS
#define CFG_ADV0_CREATE_MAX_TX_POWER 0
#define CFG_ADV0_CREATE_FILTER_POLICY FILTER_SCAN_ANY_CON_ANY

// ADV0 start parameter (ADV Forever)
#define CFG_ADV0_START_DURATION ADV_DURATION

// ADV0 data parameter
#define CFG_ADV0_DATA_ADV_PAYLOAD \
    LUNCH_HID_ADV_DAT_NAME, LUNCH_HID_ADV_DAT_UUID, LUNCH_HID_ADV_DAT_APPEARANCE, LUNCH_HID_ADV_DAT_MANU
#define CFG_ADV0_DATA_SCANRSP_ENABLE 0

// ADV1 (for pairing)
#define CFG_ADV1_OWNER_ADDR_TYPE BLE_OWN_STATIC_ADDR

// ADV1 create parameter
#define CFG_ADV1_CREATE_TYPE 0
#define CFG_ADV1_CREATE_PROPERTY ADV_LEGACY_UNDIR_CONN_MASK
#define CFG_ADV1_CREATE_CHNL_MAP ADV_ALL_CHNLS
#define CFG_ADV1_CREATE_MAX_TX_POWER 0
#define CFG_ADV1_CREATE_FILTER_POLICY FILTER_SCAN_ANY_CON_ANY

// ADV1 start parameter 
#define CFG_ADV1_START_DURATION ADV_DURATION

// ADV1 data parameter
#define CFG_ADV1_DATA_ADV_PAYLOAD \
    LUNCH_HID_ADV_DAT_NAME, LUNCH_HID_ADV_DAT_UUID, LUNCH_HID_ADV_DAT_APPEARANCE, LUNCH_HID_ADV_DAT_MANU
#define CFG_ADV1_DATA_SCANRSP_ENABLE 1
#define CFG_ADV1_DATA_SCANRSP_PAYLOAD LUNCH_HID_ADV_DAT_UUID,  LUNCH_HID_ADV_DAT_APPEARANCE

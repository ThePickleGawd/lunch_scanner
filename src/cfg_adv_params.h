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

// Used by ADV payload
#define KBD_HID_ADV_DAT_UUID 0x03, 0x03, 0x12, 0x18
#define KBD_HID_ADV_DAT_APPEARANCE 0x03, 0x19, 0xC1, 0x03
#define KBD_HID_ADV_DAT_MANU 0x06, 0xFF, 0x24, 0x0A, 0x01, 0x04, 0x00

// ADV0 (for reconnection)
#define CFG_ADV0_OWNER_ADDR_TYPE BLE_OWN_STATIC_ADDR

// ADV0 create parameter
#define CFG_ADV0_CREATE_PROPERTY ADV_LEGACY_UNDIR_CONN_MASK
#define CFG_ADV0_CREATE_CHNL_MAP ADV_ALL_CHNLS
#define CFG_ADV0_CREATE_MAX_TX_POWER 0
#define CFG_ADV0_CREATE_FILTER_POLICY FILTER_SCAN_ANY_CON_ANY

// ADV0 start parameter
#define CFG_ADV0_START_DURATION 6000

// ADV0 data parameter
#define CFG_ADV0_DATA_ADV_PAYLOAD \
    KBD_HID_ADV_DAT_UUID, KBD_HID_ADV_DAT_APPEARANCE, KBD_HID_ADV_DAT_MANU
#define CFG_ADV0_DATA_SCANRSP_ENABLE 0

// ADV1 (for pairing)
#define CFG_ADV1_OWNER_ADDR_TYPE BLE_OWN_STATIC_ADDR

// ADV1 create parameter
#define CFG_ADV1_CREATE_PROPERTY ADV_LEGACY_UNDIR_CONN_MASK
#define CFG_ADV1_CREATE_CHNL_MAP ADV_ALL_CHNLS
#define CFG_ADV1_CREATE_MAX_TX_POWER 0
#define CFG_ADV1_CREATE_FILTER_POLICY FILTER_SCAN_ANY_CON_ANY

// ADV1 start parameter
#define CFG_ADV1_START_DURATION 6000

// ADV1 data parameter
#define CFG_ADV1_DATA_ADV_PAYLOAD \
    KBD_HID_ADV_DAT_UUID, KBD_HID_ADV_DAT_APPEARANCE, KBD_HID_ADV_DAT_MANU
#define CFG_ADV1_DATA_SCANRSP_ENABLE 1
#define CFG_ADV1_DATA_SCANRSP_PAYLOAD KBD_HID_ADV_DAT_UUID,  KBD_HID_ADV_DAT_APPEARANCE

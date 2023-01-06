/**
 *******************************************************************************
 *
 * @file app_config.h
 *
 * @brief Configuration of application in build time
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */
#pragma once

#include "ble_att.h"

// Application configuration

// Preferred connection parameter negotiation retry times
#define KBD_PARAM_NEGO_RETRY 3

// Preferred connection parameter negotiation time for each try (Unit: cs)
#define KBD_PARAM_NEGO_EACH_TIMEOUT_CS 300

// Delay to prevent collision (Unit: s)
#define KBD_PARAM_NEGO_DELAY_S 5

// Idle timeout time after connected. (Unit: cs)
#define KBD_CONNECTION_IDLE_TIMEOUT_CS 60000

// HID ready timeout time after connected. (Unit: cs)
#define KBD_CONNECTION_READY_TIMEOUT_CS 3000

// Time to poll capacity while battery is low. (Unit: cs)
#define KBD_LOW_BATTERY_POLLING_CS 10000

// Time to poll capacity while battery is high. (Unit: cs)
#define KBD_HIGH_BATTERY_POLLING_CS 60000

// OTA Profile configuration

// OTA board identifier
#define KBD_OTA_BOARD_ID 02

// DISS profile configuration

// Manufacturer Name Value
#define APP_DIS_MANUFACTURER_NAME "Atmosic Tech."
// Model Number String Value
#define APP_DIS_MODEL_NB_STR "KBD-01"
// Serial Number
#define APP_DIS_SERIAL_NB_STR "1.0.0.0"
// Firmware Revision
#define APP_DIS_FIRM_REV_STR "0.1.8.7"
// Hardware Revision String
#define APP_DIS_HARD_REV_STR "1.0.0"
// Software Revision String
#define APP_DIS_SW_REV_STR "0.1.8.7"
// System ID Value - LSB -> MSB
#define APP_DIS_SYSTEM_ID "\x12\x34\x56\xFF\xFE\x9A\xBC\xDE"
// IEEE
#define APP_DIS_IEEE "\xFF\xEE\xDD\xCC\xBB\xAA"
/**
 * PNP ID Value - LSB -> MSB
 * Vendor ID Source : 0x02 (USB Implementer’s Forum assigned Vendor ID value)
 * Vendor ID : 0x045E (Microsoft Corp)
 * Product ID : 0x0040
 * Product Version : 0x0300
 */
#define APP_DIS_PNP_ID "\x02\x5E\x04\x40\x00\x00\x03"

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_MANUFACTURER_NAME_LEN (sizeof(APP_DIS_MANUFACTURER_NAME) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_MODEL_NB_STR_LEN (sizeof(APP_DIS_MODEL_NB_STR) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_SERIAL_NB_STR_LEN (sizeof(APP_DIS_SERIAL_NB_STR) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_FIRM_REV_STR_LEN (sizeof(APP_DIS_FIRM_REV_STR) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_SYSTEM_ID_LEN (sizeof(APP_DIS_SYSTEM_ID) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_HARD_REV_STR_LEN (sizeof(APP_DIS_HARD_REV_STR) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_SW_REV_STR_LEN (sizeof(APP_DIS_SW_REV_STR) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_IEEE_LEN (sizeof(APP_DIS_IEEE) - 1)

// Length of APP_DIS_MANUFACTURER_NAME
#define APP_DIS_PNP_ID_LEN (sizeof(APP_DIS_PNP_ID) - 1)

// Feature enabled
#define APP_DIS_FEATURES (BLE_DIS_MANUFACTURER_NAME_CHAR_SUP_BIT | \
    BLE_DIS_MODEL_NB_STR_CHAR_SUP_BIT | BLE_DIS_SERIAL_NB_STR_CHAR_SUP_BIT | \
    BLE_DIS_HARD_REV_STR_CHAR_SUP_BIT | BLE_DIS_FIRM_REV_STR_CHAR_SUP_BIT | \
    BLE_DIS_SW_REV_STR_CHAR_SUP_BIT | BLE_DIS_SYSTEM_ID_CHAR_SUP_BIT | \
    BLE_DIS_IEEE_CHAR_SUP_BIT | BLE_DIS_PNP_ID_CHAR_SUP_BIT)

// app_diss security level
#define APP_DIS_SEC_PROPERTY BLE_SEC_PROP_NO_SECURITY

// app_bass security level
#define APP_BASS_SEC_PROPERTY SEC_PROFLE_LEVEL

// ADV configuration

// Used by ADV payload
#define KBD_HID_ADV_DAT_UUID 0x03, 0x03, 0x12, 0x18
#define KBD_HID_ADV_DAT_APPEARANCE 0x03, 0x19, 0xC1, 0x03
#define KBD_HID_ADV_DAT_MANU 0x06, 0xFF, 0x24, 0x0A, 0x01, 0x04, 0x00

// Non constant ADV creation parameter
#define CFG_ADV_CREATE_PARAM_CONST 0

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

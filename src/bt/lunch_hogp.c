/**
 *******************************************************************************
 *
 * @file lunch_hogp.c
 *
 * @brief HOGP application part
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

#include <stdint.h>
#include <stdbool.h>
#include "ble_gap_sec.h"
#include "usb_hid_keys.h"
#include "atm_debug.h"
#include "atm_gap_param.h"
#include "lunch_hogp.h"
#include "lunch_scanner.h"

ATM_LOG_LOCAL_SETTING("lunch_hogp", N);

 // Number of non-modifier keys that can be reported as held down
#define REPORT_KEY_ARRAY_SIZE 6

// keyboard report
struct keyboard_report_s {
    uint8_t modifier_keys;
    uint8_t reserved_byte;
    uint8_t keys[REPORT_KEY_ARRAY_SIZE];
} __PACKED;

struct consumer_report_s {
    uint16_t key1;
    uint16_t key2;
} __PACKED;

#define HOGP_DEBUG 1
// Length of the HID keyboard report
#define APP_HID_KEYBOARD_REPORT_LEN (sizeof(struct keyboard_report_s))
// Length of the HID consumer report
#define APP_HID_CONSUMER_REPORT_LEN (sizeof(struct consumer_report_s))

#define HID_KEYBOARD_REPORT_IDX 0
#define HID_KEYBOARD_REPORT_ID 1
#define HID_CONSUMER_REPORT_IDX 1
#define HID_CONSUMER_REPORT_ID 2

// Number of reports that can be sent
#define HID_NB_SEND_REPORT (100)

static uint8_t const hid_keyboard_report_map[] = {
    /** INPUT
     *  -----------------------------------------------------------------------
     *  Bit   |   7   |   6   |   5   |   4   |   3   |   2   |   1   |   0   |
     *  -----------------------------------------------------------------------
     *  Byte 0|                         Modifier keys                         |
     *  -----------------------------------------------------------------------
     *  Byte 1|                          Key arrays                           |
     *  -----------------------------------------------------------------------
     *  Byte 2|                          Key arrays                           |
     *  -----------------------------------------------------------------------
     *  Byte 3|                          Key arrays                           |
     *  -----------------------------------------------------------------------
     *  Byte 4|                          Key arrays                           |
     *  -----------------------------------------------------------------------
     *  Byte 5|                          Key arrays                           |
     *  -----------------------------------------------------------------------
     *  Byte 6|                          Key arrays                           |
     *  -----------------------------------------------------------------------
     */

    /** OUTPUT
     *  -----------------------------------------------------------------------
     *  Bit   |   7   |   6   |   5   |   4   |   3   |   2   |   1   |   0   |
     *  -----------------------------------------------------------------------
     *  Byte 0|   LED report padding  | KANA  |COMPOSE| SCROLL|  CAPS |  NUM  |
     *  -----------------------------------------------------------------------
     */

    0x05, 0x01, // USAGE PAGE (Generic Desktop)
    0x09, 0x06, // USAGE (Keyboard)
    0xA1, 0x01, // COLLECTION (Application)
    0x85, HID_KEYBOARD_REPORT_ID, // REPORT ID (1) - MANDATORY

    /**
     * -------------------------------------------------------------------------
     * Key Modifiers
     * -------------------------------------------------------------------------
     */
    0x05, 0x07, // USAGE PAGE (Key Codes)
    0x19, 0xE0, // USAGE MINIMUM (224)
    0x29, 0xE7, // USAGE MAXIMUM (231)
    0x15, 0x00, // LOGICAL MINIMUM (0)
    0x25, 0x01, // LOGICAL MAXIMUM (1)
    0x75, 0x01, // REPORT SIZE (1)
    0x95, 0x08, // REPORT COUNT (8)
    0x81, 0x02, // INPUT (Data, Variable, Absolute)

    /**
     * -------------------------------------------------------------------------
     * Reserved Byte
     * -------------------------------------------------------------------------
     */
    0x75, 0x01, // REPORT SIZE  (1)
    0x95, 0x08, // REPORT COUNT (8)
    0x81, 0x01, // INPUT (Constant, Variable, Absolute)

    /**
     * -------------------------------------------------------------------------
     * LEDs
     * -------------------------------------------------------------------------
     */
    0x95, 0x05, // REPORT COUNT (5)
    0x75, 0x01, // REPORT SIZE (1)
    0x05, 0x08, // USAGE PAGE (LEDs)
    0x19, 0x01, // USAGE MINIMUM (1)
    0x29, 0x05, // USAGE MAXIMUM (5)
    0x91, 0x02, // OUTPUT (Data, Variable, Absolute)
    0x95, 0x01, // REPORT COUNT (1)
    0x75, 0x03, // REPORT SIZE (3)
    0x91, 0x01, // OUTPUT (Constant)

    /**
     * -------------------------------------------------------------------------
     * Keys
     * -------------------------------------------------------------------------
     */
    0x95, 0x06, // REPORT COUNT (6)
    0x75, 0x08, // REPORT SIZE (8)
    0x15, 0x00, // LOGICAL MINIMUM (0)
    0x25, 0x65, // LOGICAL MAXIMUM (101)
    0x05, 0x07, // USAGE PAGE (Key Codes)
    0x19, 0x00, // USAGE MINIMUM (0)
    0x29, 0x65, // USAGE MAXIMUM (101)
    0x81, 0x00, // INPUT (Data, Array)

    0xC0 // END COLLECTION (Application)
    /*
     * Consumer Control
     */
    ,
    0x05, 0x0C, // Usage Page (Consumer Devices)
    0x09, 0x01, // Usage (Consumer Control)
    0xA1, 0x01, // Collection (Application)
    0x85, HID_CONSUMER_REPORT_ID,// Report ID (CONSUMER_CTRL_IN_REP_ID)
    0x75, 0x0C, // Report Size (CONSUMER_CTRL_IN_REP_SIZE)
    0x95, 0x02, // Count (CONSUMER_CTRL_IN_REP_COUNT)
    0x15, 0x00, // Logical Minimum (0)
    0x26, 0xFF, 0x07, // Logical Maximum (2047)
    0x19, 0x00, // Usage Minimum (0)
    0x2A, 0xFF, 0x07, // Usage Maximum (2047)
    0x81, 0x00, // Input (Data, Ary, Abs)
    0xC0 // End Collection
};

static struct keyboard_report_s report;
static uint8_t lunch_conidx = GAP_INVALID_CONIDX;

static char const * const HOGP_STATE_STR[] = {"BLE_HOGPD_DISABLED", "BLE_HOGPD_IDLE",
    "BLE_HOGPD_ENABLED", "BLE_HOGPD_READY"};

static void lunch_hogp_state_ind(uint8_t conidx, ble_hogpd_state_t last)
{
    ATM_LOG(D, ATM_VT_SGR "%s" ATM_VT_SGR,
	ATM_FG_GREEN, HOGP_STATE_STR[ble_hogpd_get_peer_info()->state],
	ATM_DE_COLOR);

    lunch_conidx = conidx;
    if (ble_hogpd_get_peer_info()->state == BLE_HOGPD_READY) {
	    lunch_asm_move(OP_HID_READY);
    }
}

static ble_hogpd_param_t const lunch_hogpd_parm = {
    .nb_report = HID_NB_SEND_REPORT,
    .db_cfg = {
	.hids_nb = 1,
	.cfg = {
	    [0] = {
	    .svc_features = (BLE_HOGPD_CFG_KEYBOARD | BLE_HOGPD_CFG_PROTO_MODE),
	    .report_nb = 2,
	    .report_id[HID_KEYBOARD_REPORT_IDX] =
		HID_KEYBOARD_REPORT_ID,
	    .report_char_cfg[HID_KEYBOARD_REPORT_IDX] =
		BLE_HOGPD_CFG_REPORT_IN,
	    .report_id[HID_CONSUMER_REPORT_IDX] =
		HID_CONSUMER_REPORT_ID,
	    .report_char_cfg[HID_CONSUMER_REPORT_IDX] =
		BLE_HOGPD_CFG_REPORT_IN,
	    .hid_info.bcdHID = 0x0111, // HID Version 1.11
	    .hid_info.bCountryCode = 0x00,
	    .hid_info.flags = BLE_HIDS_REMOTE_WAKE_CAPABLE |
		BLE_HIDS_NORM_CONNECTABLE,
	    },
	},
    },
    .report_map = {
	[0] = hid_keyboard_report_map,
    },
    .report_map_len = {
	[0] = sizeof(hid_keyboard_report_map),
    },
    .ccc_rdy_mask = (1 << HID_KEYBOARD_REPORT_IDX),
    .state_ind = lunch_hogp_state_ind,
    .nb_peer = 1,
};

ble_hogpd_param_t const *lunch_hogp_param(void)
{
    return &lunch_hogpd_parm;
}

void lunch_hogp_clear_report(void)
{
    memset(report.keys, 0, REPORT_KEY_ARRAY_SIZE);
    if (ble_hogpd_get_peer_info()->state != BLE_HOGPD_READY) {
	return;
    }
    ble_hogpd_report_t const rpt = {
	.info = {
	    .conidx = lunch_conidx,
	    .rpt_type = BLE_HOGPD_REPORT,
	    .rpt_idx = HID_KEYBOARD_REPORT_IDX,
	},
	.rpt_len = APP_HID_KEYBOARD_REPORT_LEN,
	.data = (uint8_t *)&report,
    };
    ble_hogpd_send_report(&rpt, NULL, NULL);
}

void lunch_hogp_send_report(uint16_t keycode, bool pressed)
{
    if (ble_hogpd_get_peer_info()->state != BLE_HOGPD_READY) {
	return;
    }

    // Modifier keys
    if ((keycode >= KEY_LEFTCTRL) && (keycode <= KEY_RIGHTMETA)) {
	uint8_t mod = (1 << (keycode - KEY_LEFTCTRL));
	uint8_t last_mod = report.modifier_keys;
	report.modifier_keys = pressed ? last_mod | mod : last_mod & ~mod;
	if (report.modifier_keys != last_mod) {
	    goto update_hid;
	}
	return;
    }

    // Regular key press
    if (pressed) {
	for (int i = 0; i < REPORT_KEY_ARRAY_SIZE; i++) {
		uint8_t key = report.keys[i];
	    if (key == KEY_NONE) {
		report.keys[i] = keycode;
		goto update_hid;
	    } else if (key == keycode) {
		// Ignore duplicate
		return;
	    }
	}
	return;
    }

    // Regular key release
    {
	bool found = false;
	int i;
	for (i = 0; i < REPORT_KEY_ARRAY_SIZE; i++) {
	    uint8_t key = report.keys[i];

	    if (found) {
		if (report.keys[i-1] != KEY_NONE) {
		    report.keys[i-1] = key;
		    continue;
		}
		goto update_hid;
	    }
	    if (key == keycode) {
		found = true;
		continue;
	    }
	    if (key == KEY_NONE) {
		// Rest are also KEY_NONE
		return;
	    }
	}
	if (!found) {
	    return;
	}
	report.keys[i-1] = KEY_NONE;
    }

update_hid:
    ATM_LOG(V, "-> %02x ", report.keys[0]);

    ble_hogpd_report_t const rpt_info = {
	.info = {
	    .conidx = lunch_conidx,
	    .rpt_type = BLE_HOGPD_REPORT,
	    .rpt_idx = HID_KEYBOARD_REPORT_IDX,
	},
	.rpt_len = APP_HID_KEYBOARD_REPORT_LEN,
	.data = (uint8_t *)&report,
    };
    ble_hogpd_send_report(&rpt_info, NULL, NULL);
}


ble_hogpd_state_t lunch_hogp_state(void)
{
    return ble_hogpd_get_peer_info()->state;
}

/**
 *******************************************************************************
 *
 * @file lunch_parser.h
 *
 * @brief Parse Lunch Beacon Advertisements
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

// Drivers
#include <inttypes.h>
#include "atm_log.h"
#include "ble_gap.h"

// My Stuff
#include "lunch_parser.h"
#include "lunch_manager.h"

ATM_LOG_LOCAL_SETTING("lunch_parser", D);

/*
 * DEFINES
 *******************************************************************************
 */

// ADV packet offset
#define LEN_OFFSET 0
#define TYPE_OFFSET 1
#define DATA_OFFSET 2

// Lunch packet
#define SCHOOL_ID_ARR_LEN 6
#define STUDENT_ID_ARR_LEN 10
#define PAUSD_ID_LEN 8

/*  Example packet from lunch beacon
0x03, 0x03, 0xf5, 0x2a       // Complete service list: 0x2af5 = fixed string 16
0x13, 0x2a, 0xf5, 0x2a
Service Data
First 6 bytes of SHA-1 Hash of school name (GUNN)
0xb4, 0xb8, 0x85, 0xe7, 0x11, 0x79
10 byte Student ID in ascii (pad with 0x00)
'9', '5', '0', '3', '0', '4', '8', '6', 0x00, 0x00
*/

// Lunch Periph
static uint8_t PREFIX_ID[3] = {'9', '5', '0'};
#define PREFIX_LEN 3

#define PERIPH_MODE_OFFSET 2
#define PERIPH_CNT_OFFSET 3
#define PERIPH_START_OFFSET 4
#define PERIPH_NEXT_OFFSET (PAUSD_ID_LEN - PREFIX_LEN + 2) // +2 is the RSSI and the 0 pad

typedef enum {
    EXTENDER,
    CALIBRATOR
} lunch_peripheral_mode_t;



/* Example packet from peripheral
#define CFG_ADV0_DATA_ADV_PAYLOAD \
   0x1C, 0xFF, DEFAULT_PERIPH_MODE, NEEDS_PREFIX, PAYLOAD_RSSI_CNT, \
   -80, '0', '0', '0', '0', '0', '0', 0, \
   -80, '0', '0', '0', '0', '0', '0', 0, \
   -80, '0', '0', '0', '0', '0', '0', 0, \
*/

// Types
#define COMPLETE_SERVICE_LIST 0x03
#define SERVICE_DATA 0x2a
#define MANUFACTURER_DATA 0xff

static uint8_t vendor_id[3] = {0x7c, 0x69, 0x6b};

/*
 * STATIC FUNCTIONS
 *******************************************************************************
 */

lunch_parser_err_t try_parse_lunch_data(ble_gap_ind_ext_adv_report_t const *ind)
{
    ATM_LOG(V, "%s", __func__);

    int idx = 0;

    while(idx < ind->length) {
        // Find length of field and the flag
        uint8_t cur_len = ind->data[idx + LEN_OFFSET];
        uint8_t cur_type = ind->data[idx + TYPE_OFFSET];

        ATM_LOG(V, "Len: %d, Type: %02x", cur_len, cur_type);

        if(cur_len == 0) {
            ATM_LOG(W, "Invalid Data Packet");
            return PARSE_ERROR;
        }

        // Check if this is the service data (regular LunchTrak Beacon)
        if(cur_type == SERVICE_DATA) {
            
            // Copy the service data into a new array
            uint8_t buffer[cur_len - TYPE_OFFSET];
            memcpy(buffer, &ind->data[idx + DATA_OFFSET], cur_len - TYPE_OFFSET);

            // TODO: get rid of "magic numbers". 0, 1 is service uuid, 2 is first byte we care about
            if(buffer[0] == 0xf5 && buffer[1] == 0x2a) {
                nvds_lunch_data_t lunch_data = {0};

                memcpy(&lunch_data.school_id, &buffer[2], SCHOOL_ID_ARR_LEN);
                memcpy(&lunch_data.student_id, &buffer[2 + SCHOOL_ID_ARR_LEN], STUDENT_ID_ARR_LEN);

                ATM_LOG(V, "Reading School ID: %s", lunch_data.school_id);
                ATM_LOG(V, "Reading Student ID: %s", lunch_data.student_id);

                receive_lunch_data(&lunch_data, ind->rssi);

                return PARSE_LUNCH_SUCCESS;
            }
        }

        // Check if this is manufacturer data (lunch_periph data)
        if(cur_type == MANUFACTURER_DATA) {
            int cnt = ind->data[idx + PERIPH_CNT_OFFSET];
            lunch_peripheral_mode_t mode = ind->data[idx + PERIPH_MODE_OFFSET];

            for(int i = 0; i < cnt; i++) {
                int periph_idx = idx + PERIPH_START_OFFSET + (i * PERIPH_NEXT_OFFSET);
                int8_t rssi = ind->data[periph_idx];

                // Populate lunch data; add prefix (950) if needed
                nvds_lunch_data_t lunch_data = {0};
                for(int j = 0; j < PREFIX_LEN; j++) lunch_data.student_id[j] = PREFIX_ID[j];
                memcpy(&lunch_data.student_id[PREFIX_LEN], &ind->data[periph_idx + 1], PAUSD_ID_LEN - PREFIX_LEN);

                if (mode == EXTENDER) receive_extender_lunch_data(&lunch_data, rssi);
                if (mode == CALIBRATOR) receive_calibrator_lunch_data(&lunch_data, rssi);
            }

            return PARSE_MAN_SUCCESS;
        }

        // Move idx to next data field
        idx += cur_len + 1;
    }

    return PARSE_ERROR;
}

void print_bd_addr(const uint8_t addr[]) {
    ATM_LOG(V, "%x:%x:%x:%x:%x:%x", addr[5], addr[4], addr[3], addr[2], addr[1], addr[0]);
}

bool matches_bd_vendor(const uint8_t addr[]) {
    // ADDR is in LSB order
    return addr[5] == vendor_id[0] && addr[4] == vendor_id[1] && addr[3] == vendor_id[2];
}

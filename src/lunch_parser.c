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

// My Stuff
#include "lunch_parser.h"

ATM_LOG_LOCAL_SETTING("lunch_parser", D);

/*
 * DEFINES
 *******************************************************************************
 */

#define LEN_OFFSET 0
#define TYPE_OFFSET 1
#define DATA_OFFSET 2

#define COMPLETE_SERVICE_LIST 0x03
#define SERVICE_DATA 0x2a

#define SCHOOL_ID_LEN 6
#define STUDENT_ID_LEN 10

/*
 * STATIC FUNCTIONS
 *******************************************************************************
 */

static void send_lunch_data(void)
{
    ATM_LOG(D, "TODO: send lunch data to server/school software system");
}

/*  Complete service list: 0x2af5 = fixed string 16
    0x03, 0x03, 0xf5, 0x2a
    Service Data
    0x13, 0x2a, 0xf5, 0x2a
    First 6 bytes of SHA-1 Hash of school name (GUNN)
    0xb4, 0xb8, 0x85, 0xe7, 0x11, 0x79
    10 byte Student ID in ascii (pad with 0x00)
    '9', '5', '0', '3', '0', '4', '8', '6', 0x00, 0x00
*/

bool try_parse_lunch_data(uint8_t const data[], uint8_t len)
{
    ATM_LOG(D, "Try parse data");

    int idx = 0;

    while(idx < len) {
        // Find length of field and the flag
        uint8_t cur_len = data[idx + LEN_OFFSET];
        uint8_t cur_type = data[idx + TYPE_OFFSET];

        ATM_LOG(D, "Len: %d, Type: %02x", cur_len, cur_type);

        if(cur_len == 0) {
            ATM_LOG(E, "Invalid Data Packet");
            return false;
        }

        // Check if this is the service data
        if(cur_type == SERVICE_DATA) {
            ATM_LOG(D, "Ok we are here");
            
            // Copy the service data into a new array
            uint8_t buffer[cur_len - TYPE_OFFSET];
            memcpy(buffer, &data[idx + DATA_OFFSET], cur_len - TYPE_OFFSET);

            if(buffer[0] == 0xf5 && buffer[1] == 0x2a) {
                ATM_LOG(D, "It's a lunch beacon!");
                uint8_t school_id[6] = {0};
                uint8_t student_id[10] = {0};

                memcpy(school_id, &buffer[2], SCHOOL_ID_LEN);
                memcpy(student_id, &buffer[2 + SCHOOL_ID_LEN], STUDENT_ID_LEN);

                ATM_LOG(D, "School ID: %s", school_id);
                ATM_LOG(D, "Student ID: %s", student_id);

                send_lunch_data();
            }
        }

        // Move idx to next data field
        idx += cur_len + 1;
    }

    return true;
}
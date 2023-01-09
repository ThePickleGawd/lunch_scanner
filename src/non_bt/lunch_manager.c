/**
 *******************************************************************************
 *
 * @file lunch_manager.c
 *
 * @brief Manage Student ID's and Send to School Lunch Software
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

// Drivers
#include "atm_log.h"
#include "base_addr.h"
#include "usb_hid_keys.h"

// My stuff
#include "khash.h"
#include "lunch_manager.h"
#include "lunch_hogp.h"

/*
 * DEFINES
 *******************************************************************************
 */


ATM_LOG_LOCAL_SETTING("lunch_manager", D);
KHASH_SET_INIT_STR(str)

#define I2C_CLK_100K 100000

/*
 * VARIABLES
 *******************************************************************************
 */

static khash_t(str) *hash_map;

/*
 * FUNCTIONS
 *******************************************************************************
 */

static int get_key_code(uint8_t num)
{
    switch (num) {
        case '0': return KEY_0;
        case '1': return KEY_1;
        case '2': return KEY_2;
        case '3': return KEY_3;
        case '4': return KEY_4;
        case '5': return KEY_5;
        case '6': return KEY_6;
        case '7': return KEY_7;
        case '8': return KEY_8;
        case '9': return KEY_9;
        default: {
            ATM_LOG(E, "Error, unknown key");
            break;
        }
    }

    return -1;
}

void check_in_student(nvds_lunch_data_t data) {
    // Place in hash map
    int ret;
    kh_put(str, hash_map, (char *) &data.student_id[0], &ret);
    if(!ret) ATM_LOG(E, "Error %d - Something with khash", ret);

    // Send to school lunch software via I2C to FT260
    for(int i = 0; i < STUDENT_ID_ARR_LEN; i++) {
        if(data.student_id[i] == 0) break;

        lunch_hogp_send_report(get_key_code(data.student_id[i]), true);
        lunch_hogp_send_report(get_key_code(data.student_id[i]), false);
    }

    lunch_hogp_send_report(KEY_ENTER, true);
    lunch_hogp_send_report(KEY_ENTER, false);
}

bool student_is_checked_in(nvds_lunch_data_t data) {
    khiter_t k = kh_get(str, hash_map, (char *) &data.student_id[0]);
    return !(k == kh_end(hash_map));
}

__attribute__((constructor))
static void init_lunch_manager(void) {
    hash_map = kh_init(str);
}

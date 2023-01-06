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

#include "lunch_manager.h"
#include "khash.h"
#include "atm_log.h"
#include "base_addr.h"

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

void check_in_student(nvds_lunch_data_t data) {
    // Place in hash map
    int ret;
    kh_put(str, hash_map, (char *) &data.student_id[0], &ret);
    if(!ret) ATM_LOG(E, "Error %d - Something with khash", ret);

    // Send to school lunch software via I2C to FT260
    for(int i = 0; i < STUDENT_ID_ARR_LEN; i++) {
        if(data.student_id[i] == 0) break;

        struct keyboard_report_s report = {
            .modifiers = 0,
            .reserved = 0,
            .keys = {data.student_id[i], 0, 0, 0, 0, 0}
        };
        ATM_LOG(D, "TYPING: %d", report.keys[0]);
        //i2c_write(0x20, (uint8_t *) &report, sizeof(report));
    }
}

bool student_is_checked_in(nvds_lunch_data_t data) {
    khiter_t k = kh_get(str, hash_map, (char *) &data.student_id[0]);
    return !(k == kh_end(hash_map));
}

__attribute__((constructor))
static void init_lunch_manager(void) {
    hash_map = kh_init(str);
}

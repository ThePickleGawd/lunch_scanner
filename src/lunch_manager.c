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
#include "i2c.h"
#include "base_addr.h"

/*
 * DEFINES
 *******************************************************************************
 */


ATM_LOG_LOCAL_SETTING("lunch_manager", D);
KHASH_SET_INIT_STR(str)

#define I2C_CLK_100K 100000
#define REPORT_KEY_ARRAY_SIZE 6

/*
 * VARIABLES
 *******************************************************************************
 */

static khash_t(str) *hash_map;

static i2c_dev_t i2c_dev = {
    .base = CMSDK_I2C0_BASE,
    .enable_data_pullup = true
};

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
        //i2c_write(0x20, (uint8_t *) &report, sizeof(report));
    }
}

bool student_is_checked_in(nvds_lunch_data_t data) {
    khiter_t k = kh_get(str, hash_map, (char *) &data.student_id[0]);
    return !(k == kh_end(hash_map));
}

static rep_vec_err_t ft260_init(void) {
    i2c_init(&i2c_dev);
    i2c_SetClock(&i2c_dev, 100000);

}

__attribute__((constructor))
static void init_lunch_manager(void) {
    hash_map = kh_init(str);
}

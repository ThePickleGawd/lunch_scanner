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
#include "lunch_helper.h"

/*
 * DEFINES
 *******************************************************************************
 */


ATM_LOG_LOCAL_SETTING("lunch_manager", D);
KHASH_SET_INIT_INT(check_in)
KHASH_MAP_INIT_INT(rssi, rssi_array_t)

#define I2C_CLK_100K 100000

/*
 * VARIABLES
 *******************************************************************************
 */

static khash_t(check_in) *check_in_set;
static khash_t(rssi) *rssi_map;

/*
 * FUNCTIONS
 *******************************************************************************
 */

static int student_id_to_int(nvds_lunch_data_t data)
{
    int num = 0;
    for(int i = STUDENT_ID_ARR_LEN - 1; i >= 0; i--) {
        num += data.student_id[i] - '0';
        num *= 10;
    }
    
    return num;
}

void check_in_student(nvds_lunch_data_t data) {
    // Place in hash map
    int ret;
    kh_put(check_in, check_in_set, student_id_to_int(data), &ret);

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
    khiter_t k = kh_get(check_in, check_in_set, student_id_to_int(data));
    return !(k == kh_end(check_in_set));
}

void receive_rssi(nvds_lunch_data_t data, int rssi)
{
    khiter_t k = kh_get(rssi, rssi_map, student_id_to_int(data));
    if (k == kh_end(rssi_map)) {
        // New entry in rssi map
        int ret;
        khiter_t iter = kh_put(rssi, rssi_map, student_id_to_int(data), &ret);

        // Place new rssi array entry into map
        rssi_array_t rssi_arr;
        rssi_arr.array[0] = rssi;
        rssi_arr.size = 1;
        kh_value(rssi_map, iter) = rssi_arr;
    } else {
        // Place rssi at end of array and update size
        rssi_array_t *rssi_arr = &kh_value(rssi_map, k);
        rssi_arr->array[rssi_arr->size++] = rssi;

        // Check if rssi array is full once done
        if(rssi_arr->size >= MAX_RSSI_ARR_LEN) {
            // Print median RSSI
            ATM_LOG(D, "Median RSSI is %d", (int)get_rssi_median(rssi_arr));
            rssi_arr->size = 0;

            // TODO: if median RSSI passes threshold, then check in student
        }
    }
}

__attribute__((constructor))
static void init_lunch_manager(void) {
    check_in_set = kh_init(check_in);
    rssi_map = kh_init(rssi);
}

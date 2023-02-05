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


ATM_LOG_LOCAL_SETTING("lunch_manager", V);
KHASH_SET_INIT_INT(check_in)
KHASH_MAP_INIT_INT(rssi, rssi_profile_t)

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

static void check_in_student(nvds_lunch_data_t data) {
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

    ATM_LOG(V, "Checked in %s", data.student_id);
}

bool student_is_checked_in(nvds_lunch_data_t data) {
    khiter_t k = kh_get(check_in, check_in_set, student_id_to_int(data));
    return !(k == kh_end(check_in_set));
}

void receive_special_lunch_data(nvds_lunch_data_t data, int rssi)
{
    if(student_is_checked_in(data)) return;

    ATM_LOG(D, "Checking in student with special lunch packet (rssi = %d", (rssi));
    check_in_student(data);
}

void receive_lunch_data(nvds_lunch_data_t data, int rssi)
{
    //ATM_LOG(V, "Receiving ID: %s with RSSI: %d", data.student_id, rssi);
    char str[] = "=================== ";
    int idx = (int) (19 *((double)90+rssi)/60);
    for(int i = idx; i < 20; i++) str[i] = '-'; 
    str[20] = 0;
    ATM_LOG(V, "%s (%d)", str, rssi);
    
    // TODO: replace str[i] with space if signal indicates it

    if(student_is_checked_in(data)) return;
    
    khiter_t k = kh_get(rssi, rssi_map, student_id_to_int(data));
    if (k == kh_end(rssi_map)) {
        // Don't create entry if rssi does not pass threshold
        if(rssi < RSSI_THRESHOLD) return;

        // New entry in rssi map
        int ret;
        khiter_t iter = kh_put(rssi, rssi_map, student_id_to_int(data), &ret);

        // Place new rssi value in map
        rssi_profile_t rssi_profile = {
            .pass_cnt = 1,
            .leeway = 0
        };
        kh_value(rssi_map, iter) = rssi_profile;
    } else {
        // RSSI profile already in map
        rssi_profile_t *rssi_profile = &kh_value(rssi_map, k);
        
        if(rssi < RSSI_THRESHOLD) {
            if(++(rssi_profile->leeway) > RSSI_LEEWAY_MAX) {
                rssi_profile->pass_cnt = 0;
                rssi_profile->leeway = 0;
            }
        } else {
            if(++(rssi_profile->pass_cnt) >= RSSI_PASS_REQUIREMENT) {
                check_in_student(data);
                kh_del(rssi, rssi_map, k);
            }
        }
        
    }
}

__attribute__((constructor))
static void init_lunch_manager(void) {
    check_in_set = kh_init(check_in);
    rssi_map = kh_init(rssi);
}

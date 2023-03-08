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

void receive_special_lunch_data(nvds_lunch_data_t data, int8_t rssi_val)
{
    ATM_LOG(D, "Recieving special %s", data.student_id);

    if(student_is_checked_in(data)) return;
    if(rssi_val < RSSI_THRESHOLD) return;
    
    ATM_LOG(D, "Checking in student with special lunch packet (rssi = %d)", (rssi_val));
    check_in_student(data);
}

void receive_lunch_data(nvds_lunch_data_t data, int8_t rssi_val)
{
    //ATM_LOG(V, "Receiving ID: %s with RSSI: %d", data.student_id, rssi);
    char str[] = "=================== ";
    int idx = (int) (19 *((double)90+rssi_val)/60);
    for(int i = idx; i < 20; i++) str[i] = '-'; 
    str[20] = 0;
    ATM_LOG(V, "%s (%d)", str, rssi_val);
    
    // TODO: replace str[i] with space if signal indicates it

    if(student_is_checked_in(data)) return;
    
    khiter_t k = kh_get(rssi, rssi_map, student_id_to_int(data));
    if (k == kh_end(rssi_map)) {
        // Don't create entry if rssi does not pass threshold
        if(rssi_val < RSSI_THRESHOLD) return;

        // New entry in rssi map
        int ret;
        khiter_t iter = kh_put(rssi, rssi_map, student_id_to_int(data), &ret);

        // Place new rssi value in map
        rssi_profile_t rssi_profile = {
            .total = rssi_val,
            .index = 0,
            .is_full = false
        };
        rssi_profile.rssi_values[0] = rssi_val;

        kh_value(rssi_map, iter) = rssi_profile;
    } else {
        // RSSI profile already in map
        rssi_profile_t *rssi_profile = &kh_value(rssi_map, k);

        int cur_index = rssi_profile->index;
        int next_index = (cur_index + 1 >= RSSI_ARRAY_SIZE) ? 0 : cur_index + 1;

        if(!rssi_profile->is_full) {
            // If we made a full cycle, set is_full to true and remove current idx=0 value
            if(next_index == 0) {
                rssi_profile->is_full = true;
                rssi_profile->total -= rssi_profile->rssi_values[0];
            }

            // Fill in next slot
            rssi_profile->rssi_values[next_index] = rssi_val;
            rssi_profile->total += rssi_val;
        } else {
            // Replace value and update total
            rssi_profile->total -= rssi_profile->rssi_values[cur_index];
            rssi_profile->rssi_values[cur_index] = rssi_val;
            rssi_profile->total += rssi_val;

            // Check in student if total is above array threshold
            if(rssi_profile->total >= RSSI_ARRAY_TOTAL_THRESHOLD) {
                check_in_student(data);
                kh_del(rssi, rssi_map, k);
            }
        }
        

        ATM_LOG(D, "RSSI Profile total: %d, idx = %d full = %s arr = [%d, %d, %d, %d, %d]",
            rssi_profile->total, rssi_profile->index, rssi_profile->is_full ? "yes" : "no",
            rssi_profile->rssi_values[0], rssi_profile->rssi_values[1], rssi_profile->rssi_values[2], rssi_profile->rssi_values[3], rssi_profile->rssi_values[4]);

        rssi_profile->index = next_index;
    }
}

__attribute__((constructor))
static void init_lunch_manager(void) {
    check_in_set = kh_init(check_in);
    rssi_map = kh_init(rssi);
}

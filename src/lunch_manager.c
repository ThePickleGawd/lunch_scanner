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

ATM_LOG_LOCAL_SETTING("lunch_manager", D);

// Macro for hash map type defs (no trailing comma)
KHASH_SET_INIT_STR(str)

khash_t(str) *hash_map;

void check_in_student(nvds_lunch_data_t data) {
    int ret;
    kh_put(str, hash_map, (char *) &data.student_id[0], &ret);
    if(!ret) ATM_LOG(E, "Error %d - Something with khash", ret);
}

bool student_is_checked_in(nvds_lunch_data_t data) {
    khiter_t k = kh_get(str, hash_map, (char *) &data.student_id[0]);
    return !(k == kh_end(hash_map));
}

__attribute__((constructor))
static void init_lunch_manager(void) {
    hash_map = kh_init(str);
}

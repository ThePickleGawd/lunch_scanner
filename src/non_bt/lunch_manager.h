/**
 *******************************************************************************
 *
 * @file lunch_manager.h
 *
 * @brief Manage Student ID's and Send to School Lunch Software
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

#pragma once

#include <inttypes.h>
#include "arch.h"

// Lunch Data Setting
#define SCHOOL_ID_ARR_LEN 6
#define STUDENT_ID_ARR_LEN 10

// RSSI Setting
#define RSSI_THRESHOLD -69
#define RSSI_PASS_REQUIREMENT 3
#define RSSI_LEEWAY_MAX 0

/**
 * @brief NVDS Lunch Data Type
 * @note The last byte for each array will always be 0 so that we can treat it like a string
 */
typedef struct {
    uint8_t school_id[SCHOOL_ID_ARR_LEN];
    uint8_t student_id[STUDENT_ID_ARR_LEN];
} __PACKED nvds_lunch_data_t;
/**
 * @brief RSSI Array Type
 * @note Values at index greater than size can be anything, but it doesn't matter
 */
typedef struct {
    int pass_cnt;
    int leeway;
} rssi_profile_t;

/**
 * @brief Is student already checked in?
 * @returns true if checked in. Else false
 */
bool student_is_checked_in(nvds_lunch_data_t data);

/**
 * @brief Send lunch data to lunch_manager
 */
void receive_lunch_data(nvds_lunch_data_t data, int rssi);

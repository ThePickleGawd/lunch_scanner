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
#define RSSI_THRESHOLD_DEFAULT -58
#define RSSI_ARRAY_SIZE 4
#define RSSI_THRESHOLD_UNSET -128
#define RSSI_VAL_UNSET -128

/**
 * @brief NVDS Lunch Data Type
 * @note The last byte for each array will always be 0 so that we can treat it like a string
 */
typedef struct {
    uint8_t school_id[SCHOOL_ID_ARR_LEN];
    uint8_t student_id[STUDENT_ID_ARR_LEN];
} __PACKED nvds_lunch_data_t;

typedef struct {
    int8_t rssi_val;
    uint8_t student_id[STUDENT_ID_ARR_LEN];
} __PACKED lunch_peripheral_data_t;

/**
 * @brief RSSI Profile struct
 * @note Sliding average approach by cycling through array
 */
typedef struct {
    int8_t rssi_values[RSSI_ARRAY_SIZE]; // Array of recent rssi values
    int8_t index; // Index of the previously placed rssi value
    int total; // Sum of rssi values (needs to be int or more)
    bool is_full; // True if the array is full
    int8_t rssi_threshold; // Threshold set by calibrator. RSSI_THRESHOLD_UNSET means use default
} rssi_profile_t;

/**
 * @brief Is student already checked in?
 * @returns true if checked in. Else false
 */
bool student_is_checked_in(nvds_lunch_data_t *data);

/**
 * @brief Send lunch data to lunch_manager
 */
void receive_lunch_data(nvds_lunch_data_t *data, int8_t rssi_val);

/**
 * @brief Receive extender peripheral adv data
 */
void receive_extender_lunch_data(nvds_lunch_data_t *data, int8_t rssi_val);

/**
 * @brief Receive calibrator peripheral adv data
 */
void receive_calibrator_lunch_data(nvds_lunch_data_t *data, int8_t rssi_val);


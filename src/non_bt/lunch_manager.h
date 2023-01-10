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

#define SCHOOL_ID_ARR_LEN 6
#define STUDENT_ID_ARR_LEN 10
#define MAX_RSSI_ARR_LEN 10

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
 * @note Values at index greater than size can be anything, but it doesn' matter
 */
typedef struct {
    int_fast16_t array[MAX_RSSI_ARR_LEN];
    uint16_t size;
} rssi_array_t;

void check_in_student(nvds_lunch_data_t data);
bool student_is_checked_in(nvds_lunch_data_t data);
void receive_rssi(nvds_lunch_data_t data, int rssi);

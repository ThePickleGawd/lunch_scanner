/**
 *******************************************************************************
 *
 * @file lunch_parser.h
 *
 * @brief Parse Lunch Beacon Advertisements
 *
 * Copyright (C) Atmosic 2021-2022
 *
 *******************************************************************************
 */

#pragma once

typedef enum {
    PARSE_LUNCH_SUCCESS,
    PARSE_MAN_SUCCESS,
    PARSE_ERROR,
} lunch_parser_err_t;

/**
 * @brief Try to parse lunch data from advertisement data
 * @returns lunch_parser_err_t
*/
lunch_parser_err_t try_parse_lunch_data(ble_gap_ind_ext_adv_report_t const *ind);

/**
 * @brief Prints out formatted bluetooth address
*/
void print_bd_addr(const uint8_t addr[]);

/**
 * @brief Checks first 3 bytes against vendor id
 * @returns true on success, false otherwise
*/
bool matches_bd_vendor(const uint8_t addr[]);

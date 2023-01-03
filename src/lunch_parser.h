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

#include "lunch_manager.h"

/**
 * @brief Try to parse lunch data from advertisement data
 * @returns true on success, false otherwise
*/
bool try_parse_lunch_data(uint8_t const data[], uint8_t len, nvds_lunch_data_t* out);
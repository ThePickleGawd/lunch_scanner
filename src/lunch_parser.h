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

/**
 * @brief Try to parse lunch data from advertisement data
 * @returns true on success, false otherwise
*/
bool try_parse_lunch_data(uint8_t data[], uint8_t len);
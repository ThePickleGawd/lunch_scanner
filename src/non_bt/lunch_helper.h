#pragma once

#include <inttypes.h>
#include "lunch_manager.h"

int_fast16_t quick_select_median(int_fast16_t arr[], uint16_t n);
int_fast16_t get_rssi_median(rssi_array_t *rssi_arr);
int get_key_code(uint8_t num);

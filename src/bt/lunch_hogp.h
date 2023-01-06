/**
 *******************************************************************************
 *
 * @file kbd_hogp.h
 *
 * @brief HOGP application part
 *
 * Copyright (C) Atmosic 2021
 *
 *******************************************************************************
 */
#pragma once
#include "ble_hogpd.h"

/**
 *******************************************************************************
 * @brief Get HOGP profile parameter.
 * This is used for passing parameters to @ref atm_gap_prf_reg.
 * @return Parameters.
 *******************************************************************************
 */
ble_hogpd_param_t const *lunch_hogp_param(void);

/**
 *******************************************************************************
 * @brief Send keycode to peer.
 * @param[in] keycode Key code.
 * @param[in] pressed True is pressed. Otherwire is released.
 *******************************************************************************
 */
void lunch_hogp_send_report(uint16_t keycode, bool pressed);

/**
 *******************************************************************************
 * @brief Send a report of all key released to peer.
 *******************************************************************************
 */
void lunch_hogp_clear_report(void);

/**
 *******************************************************************************
 * @brief Get HOGP state
 * @return HOGP state.
 *******************************************************************************
 */
ble_hogpd_state_t lunch_hogp_state(void);

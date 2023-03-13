/**
 *******************************************************************************
 *
 * @file lunch_button.c
 *
 * @brief KEY button handler
 *
 * Copyright (C) Atmosic 2022
 *
 *******************************************************************************
 */
#include <inttypes.h>
#include "atm_log.h"
#include "atm_utils_c.h"
#include "atm_pm.h"
#include "atm_gpio.h"
#include "sw_timer.h"
#include "interrupt.h"
#include "pinmux.h"

// My stuff
#include "lunch_pair_button.h"

ATM_LOG_LOCAL_SETTING("lunch_pair_button", V);

// Button Configuration
#define BTN_PRESS_MIN_TIME_CS 300
#define BTN_CHECK_PRESS_INTERVAL_CS 20
#define MAX_PRESS_CHECKS (BTN_PRESS_MIN_TIME_CS / BTN_CHECK_PRESS_INTERVAL_CS)

#define PAIR_BUTTON_PIN 10

static press_event_cb event_cb;
static sw_timer_id_t check_press_tid;

int check_press_counter = 0;

static void check_press(sw_timer_id_t timer_id, const void *ctx)
{
    sw_timer_clear(check_press_tid);

    check_press_counter++;

    if(check_press_counter >= MAX_PRESS_CHECKS) {
        event_cb(); 
        check_press_counter = 0;
    } else {
        if(atm_gpio_read_gpio(PAIR_BUTTON_PIN) == 1) {
            // Still pressing, keep checking
            sw_timer_set(check_press_tid, BTN_CHECK_PRESS_INTERVAL_CS);
        } else {
            // Stopped pressing, abort
            check_press_counter = 0;
        }
    }
}

__FAST static void interrupt_hdlr(uint32_t mask)
{
    ATM_LOG(D, "Button Clicked");
    
    atm_gpio_set_int_disable(PAIR_BUTTON_PIN);
    atm_gpio_clear_int_status(PAIR_BUTTON_PIN);

    atm_gpio_int_set_rising(PAIR_BUTTON_PIN);
    atm_gpio_set_int_enable(PAIR_BUTTON_PIN);

    sw_timer_set(check_press_tid, BTN_CHECK_PRESS_INTERVAL_CS);
}

void lunch_pair_button_init(press_event_cb cb)
{
	event_cb = cb;
    check_press_tid = sw_timer_alloc(check_press, NULL);

    atm_gpio_setup(PAIR_BUTTON_PIN);
    atm_gpio_set_input(PAIR_BUTTON_PIN);

    interrupt_install_gpio(PAIR_BUTTON_PIN, 3, interrupt_hdlr);    

    atm_gpio_int_set_rising(PAIR_BUTTON_PIN);
    atm_gpio_set_int_enable(PAIR_BUTTON_PIN);

}


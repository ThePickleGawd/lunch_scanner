/**
 *******************************************************************************
 *
 * @file bas_param_scan.h
 *
 * @brief Scan configuration
 *
 * Copyright (C) Atmosic 2021
 *
 *******************************************************************************
 */
//***<<< Use Configuration Wizard in Context Menu >>>***

#pragma once

// <c1> Overwrite Default Scan Parameter
// <i> Overwrite Default Scan Parameter
#define APP_CFG_SCAN_PARAM_SETTING
// </c>

#ifdef APP_CFG_SCAN_PARAM_SETTING


// <o> Scanning types
// <i> Scanning Types
//    <0=> General discovery
//    <1=> Limited discovery
//    <2=> Observer
//    <3=> Selective observer
//    <4=> Connectable discovery
//    <5=> Selective connectable discovery
#define CFG_SCAN0_START_TYPE 2

//<h> Scanning properties bit field bit value
// <i> Scanning properties bit field bit value
//    <q.0> Scan advertisement on the LE 1M PHY
//    <q.1> Scan advertisement on the LE Coded PHY
//    <q.2> Active scan on LE 1M PHY
//    <q.3> Active scan on LE Coded PHY
//    <q.4> Accept directed advertising packets if we RPA's target cannot be solved
//    <q.5> Filter truncated advertising or scan response reports
#define CFG_SCAN0_START_PROP 0x01
//</h>


// <o> Filtering policy for duplicated packets
// <i> Filtering policy for duplicated packets
//    <0=> Disable filtering of duplicated packets
//    <1=> Enable filtering of duplicated packets
//    <2=> Enable filtering of duplicated packets, reset for each scan period
#define CFG_SCAN0_START_DUP_FILTER_POLICY 1

//<h> Scan interval and windows setting
// <o> 1M PHY Scan interval (uint: us)
// <i> 1M PHY Scan interval (uint: us)
// <2500-10240000>
#define SCAN0_1M_INTERVAL 100000

// <o> 1M PHY Scan window (uint: us)
// <i> 1M PHY Scan window (uint: us)
// <2500-10240000>
#define SCAN0_1M_WINDOWS 100000

// <o> Coded PHY Scan interval (uint: us)
// <i> Coded PHY Scan interval (uint: us)
// <2500-10240000>
#define SCAN0_CODED_INTERVAL 10000

// <o> Coded PHY Scan window (uint: us)
// <i> Coded PHY Scan window (uint: us)
// <2500-10240000>
#define SCAN0_CODED_WINDOWS 10000

// <c1> Scan continuously
// <i> Scan continuously (will ignore SCAN0_DURATION parameter)
//#define SCAN_CONTINOUS
// </c>

// <o> Scan duration (uint: ms)
// <i> Scan duration (uint: ms)
// <10-655350>
#define SCAN0_DURATION 1000

// <c1> Scan procedure is not periodic
// <i> Scan procedure is not periodic (will ingore SCAN0_PERIOD parameter)
#define SCAN_NOT_PERIODIC
// </c>

// <o> Scan period (uint: ms)
// <i> Scan period (uint: ms)
// <1280-83884800>
//#define SCAN0_PERIOD 500

//</h>

#define SCAN0_START_1M_INTERVAL ((uint16_t)(SCAN0_1M_INTERVAL/625))
#define SCAN0_START_1M_WINDOW ((uint16_t)(SCAN0_1M_WINDOWS/625))
#define CFG_SCAN0_START_1M_PARAM SCAN0_START_1M_INTERVAL, SCAN0_START_1M_WINDOW

#define SCAN0_START_CODED_INTERVAL ((uint16_t)(SCAN0_CODED_INTERVAL/625))
#define SCAN0_START_CODED_WINDOW ((uint16_t)(SCAN0_CODED_WINDOWS/625))
#define CFG_SCAN0_START_CODED_PARAM SCAN0_START_CODED_INTERVAL, SCAN0_START_CODED_WINDOW

#ifdef SCAN_CONTINOUS
#define CFG_SCAN0_START_DURATION 0
#else // SCAN_CONTINUOUS
#define CFG_SCAN0_START_DURATION ((uint16_t)(SCAN0_DURATION/10))
#endif // SCAN_CONTINUOUS

#ifdef SCAN_NOT_PERIODIC
#define CFG_SCAN0_START_PERIOD 0
#else // SCAN_NOT_PERIODIC
#define CFG_SCAN0_START_PERIOD ((uint16_t)(SCAN0_PERIOD/1280))
#endif // SCAN_NOT_PERIODIC

#endif // APP_CFG_SCAN_PARAM_SETTING

//***<<< end of configuration section >>>***

include ../../user/common.mk

DEBUG := 1

DRIVERS := interrupt sw_timer timer atm_pm
LIBRARIES := prf

FRAMEWORK_MODULES := \
	atm_scan \
	atm_asm \
	atm_common \
	atm_debug \
	atm_gap \
	atm_log \
	ble_gap \

UU_TEST := lunch_scanner atm_scan
INCLUDES += .

CFLAGS += \
	-DNO_GAP_SEC \
	-DNO_ATM_ADV \
	-DNO_BLE_GATTC \
	-DCFG_GAP_PARAM_CONST=0 \
	-DCFG_GAP_SCAN_MAX_INST=1 \
	-DGAP_SCAN_PARM_NAME="config_scan_params.h" \

flash_nvds.data := \
	09-APP_BLE_RSTRT_DUR/default \
	11-SLEEP_ENABLE/hib \
	12-EXT_WAKEUP_ENABLE/enable2 \

include $(COMMON_USER_DIR)/framework.mk

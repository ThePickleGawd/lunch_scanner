include ../../user/common.mk

DEBUG := 1

DRIVERS := atm_ble interrupt sw_timer timer
LIBRARIES := prf

FRAMEWORK_MODULES := \
	atm_scan \
	atm_asm \
	atm_common \
	atm_debug \
	atm_gap \
	atm_log \
	ble_gap \
	atm_adv \

UU_TEST := lunch_scanner

INCLUDES += .

NUM_FOUND ?= 1

CFLAGS += \
	-DCFG_NO_GAP_SEC \
	-DCFG_NO_GATTC \
	-DCFG_GAP_ROLE=BLE_GAP_ROLE_ALL \
	-DNUM_FOUND=$(NUM_FOUND) \
	-DCFG_GAP_ADV_MAX_INST=1 \
	-DCFG_GAP_SCAN_MAX_INST=1 \
	-DCFG_ADV_CREATE_PARAM_CONST=0 \
	-DCFG_ADV_START_PARAM_CONST=0 \
	-DGAP_ADV_PARM_NAME="cfg_adv_params.h" \
	-DGAP_SCAN_PARM_NAME="cfg_gap_params.h" \

ifdef ROUND_ROBIN
CFLAGS += -DROUND_ROBIN
endif

flash_nvds.data += \
	02-DEVICE_NAME/ble_adv_scan \
	11-SLEEP_ENABLE/ret \
	a4-SCAN_SETTING/1s_scan \

ADV ?= HDC

ifeq ($(ADV),HDC)
# High Duty Cycle Direct Beacon Setting
flash_nvds.data += \
	05-APP_BLE_ACT_STRT_CMD/100ms_adv \
	06-APP_BLE_ACT_CRT_CMD/dir_hdc \
	a3-ADV_DURATION/100ms \

else ifeq ($(ADV),LDC)
# Low Duty Cycle Direct Beacon Setting at makefile
flash_nvds.data += \
	05-APP_BLE_ACT_STRT_CMD/1s_adv \
	06-APP_BLE_ACT_CRT_CMD/dir_ldc \

else
$(error "usage: make $(MAKECMDGOALS) ADV=<HDC|LDC>")
endif

include $(COMMON_USER_DIR)/framework.mk

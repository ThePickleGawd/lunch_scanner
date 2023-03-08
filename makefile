include ../../user/common.mk

DEBUG := 1

DRIVERS := \
	atm_ble \
	atm_pm \
	interrupt \
	sw_timer \
	sw_event \
	timer \
	atm_gpio

LIBRARIES := prf
PROFILES := DISS HOGPD
FRAMEWORK_MODULES := \
	atm_scan \
	atm_asm \
	atm_common \
	atm_debug \
	atm_gap \
	atm_log \
	atm_adv \
	app_diss \
	ble_gap \
	ble_gap_sec \
	ble_hogpd \
	ble_diss \

UU_TEST := lunch_scanner

INCLUDES += .

CFLAGS += \
	-DCFG_NO_GATTC \
	-DGAP_ADV_PARM_NAME="cfg_adv_params.h" \
	-DGAP_PARM_NAME="cfg_gap_params.h" \
	-DBLE_MSG_HANDLER_LIST_SIZE=10 \
	-DCFG_S_MAX_ENTRY=2 \
	-DENABLE_USER_ADV_TIMEOUT \
	-DENABLE_USER_ADV_PARAM_SETTING \
	-DENABLE_USER_ADV_DATA_SCANRSP \
	-DCFG_GAP_ADV_MAX_INST=2 \
	-DCFG_GAP_SCAN_MAX_INST=1 \

#-DATM_LOG_GLOBAL_LEVEL=ATM_LOG_W_MASK \

flash_nvds.data += \
	02-DEVICE_NAME/ble_adv_scan \
	11-SLEEP_ENABLE/disable \
	
#a4-SCAN_SETTING/1s_scan \

# High Duty Cycle Direct Beacon Setting
# flash_nvds.data += \
# 	05-APP_BLE_ACT_STRT_CMD/100ms_adv \
# 	06-APP_BLE_ACT_CRT_CMD/dir_hdc \
# 	a3-ADV_DURATION/500ms \

# SRC
SRC_TOP = src
SRC_BT = src/bt
SRC_NON_BT = src/non_bt
INCLUDES += $(SRC_TOP) $(SRC_BT) $(SRC_NON_BT)
C_SRCS += \
	$(SRC_NON_BT)/lunch_parser.c \
	$(SRC_NON_BT)/lunch_manager.c \
	$(SRC_NON_BT)/lunch_helper.c \
	$(SRC_BT)/lunch_gap.c \
	$(SRC_BT)/lunch_hogp.c \

include $(COMMON_USER_DIR)/profiles.mk
include $(COMMON_USER_DIR)/framework.mk
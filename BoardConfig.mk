#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/haydn

# Bluetooth
#BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
QCOM_BOARD_PLATFORMS += sm8250

# Display
TARGET_SCREEN_DENSITY := 420

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_haydn
TARGET_RECOVERY_DEVICE_MODULES := libinit_haydn

# OTA assert
TARGET_OTA_ASSERT_DEVICE := haydn,haydnin,haydnpro

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/haydn/BoardConfigVendor.mk

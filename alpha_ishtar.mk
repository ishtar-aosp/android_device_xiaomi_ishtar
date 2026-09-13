#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ishtar device
$(call inherit-product, device/xiaomi/ishtar/device.mk)

# Inherit from common AlphaDrodid configuration
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

PRODUCT_NAME := alpha_ishtar
PRODUCT_DEVICE := ishtar
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2304FPN6DC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Xiaomi/ishtar/ishtar:16/BP2A.250605.031/OS3.0.4.0.WMACNXM:user/release-keys

# Device config
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build config

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

ifeq ($(TARGET_BUILD_PACKAGE),3)
  # (valid only for GAPPS builds)
  TARGET_INCLUDE_GOOGLE_COMMS := true
  TARGET_INCLUDE_PIXEL_LAUNCHER := true
  TARGET_SUPPORTS_QUICK_TAP := true
  TARGET_SUPPORTS_CALL_RECORDING := true
  TARGET_INCLUDE_STOCK_ARCORE := true
  TARGET_INCLUDE_LIVE_WALLPAPERS := true
  TARGET_SUPPORTS_GOOGLE_RECORDER := false
endif

# Debugging
TARGET_INCLUDE_MATLOG := false
WITH_ADB_INSECURE := false
TARGET_BUILD_PERMISSIVE := false

# Maintainer
ALPHA_MAINTAINER := hasan6034

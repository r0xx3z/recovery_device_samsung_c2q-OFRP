#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := c2q

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/c2q/device.mk)

# Inherit from fox_c2q configs
$(call inherit-product, device/samsung/c2q/fox_c2q.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/c2q/recovery/root,recovery/root)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := twrp_c2q
PRODUCT_DEVICE := c2q
PRODUCT_MODEL := SM-N986U1
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

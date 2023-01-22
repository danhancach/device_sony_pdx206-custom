#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_MINI_GAPPS := true

IS_PHONE := true

PRODUCT_NAME := evolution_pdx206
PRODUCT_DEVICE := pdx206
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-AS52

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=pdx206 \
    TARGET_PRODUCT=XQ-AS52
    PRIVATE_BUILD_DESC="Sony/XQ-AT52/XQ-AT52:12/58.2.A.4.52/058002A004005204241360111:user/release-keys"

BUILD_FINGERPRINT := "Sony/pdx206/pdx206:11/RKQ1.211001.001/1:user/release-keys"

#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Cherish stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

PRODUCT_NAME := cherish_pdx206
PRODUCT_DEVICE := pdx206
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := XQ-AS72

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=XQ-AS72 \
    TARGET_PRODUCT=XQ-AS72 \
    PRIVATE_BUILD_DESC="XQ-AS72-user 12 58.2.A.10.126 058002A010012603718185433 release-keys"

BUILD_FINGERPRINT := Sony/XQ-AS72/XQ-AS72:12/58.2.A.10.126/058002A010012603718185433:user/release-keys

# Rom Specific Flags
IS_PHONE := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BUILD_WITH_LTO := true
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_INCLUDE_WIFI_EXT := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_USES_MINI_GAPPS := true

# Cherish Maintainer Flags
CHERISH_MAINTAINER := danhancach
CHERISH_BUILD_TYPE := COMMUNITY
CHERISH_BATTERY := 4000mAh
CHERISH_CHIPSET := SM8250
CHERISH_DISPLAY := 1080x2520

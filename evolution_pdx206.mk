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

# Specific props
RICE_MAINTAINER := danhancach
TARGET_ENABLE_BLUR := true
TARGET_USE_PIXEL_FINGERPRINT := true
BOOTANIMATION := 1080
WITH_GMS := true
TARGET_USES_MINI_GAPPS := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := true
RICE_CHIPSET := "Snapdragon 865 5G"

IS_PHONE := true

PRODUCT_NAME := evolution_pdx206
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

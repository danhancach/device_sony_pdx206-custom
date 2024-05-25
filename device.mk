#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from sony sm8250-common
$(call inherit-product, device/sony/sm8250-common/edo.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Overlays
PRODUCT_PACKAGES += \
    SonyPDX206FrameworksRes \
    SonyPDX206SettingsRes \
    SonyPDX206SystemUIRes

DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

# HDR
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/libhdr_somc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/libhdr_somc.xml

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gpio-keys.kl

# Inherit from vendor blobs
$(call inherit-product, vendor/sony/pdx206/pdx206-vendor.mk)

# Xperia Modules
TARGET_SUPPORTS_HIGH_REFRESH_RATE := true

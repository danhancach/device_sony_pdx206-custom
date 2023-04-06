#
# Copyright (C) 2022-2023 VoidUI Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := \
    ANGLE \
    AmbientSensePrebuilt \
    AppDirectedSMSService \
    Aperture \
    BetterBugStub \
    CalendarGooglePrebuilt \
    CarrierLocation \
    Chrome \
    Chrome.apk.gz \
    Chrome-Stub \
    DeviceIntelligenceNetworkPrebuilt \
    GCS \
    GoogleCamera \
    PlayAutoInstallConfig \
    SCONE \
    TrichromeLibrary \
    WebViewGoogle \
	Music MusicFX \
    AudioFX \
    Browser2 \
    Calendar \
    Contacts \
    DeskClock \
    Gallery2

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
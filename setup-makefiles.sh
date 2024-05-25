#!/bin/bash
#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE_COMMON=pdx206
export DEVICE_COMMON=sm8250-common
export VENDOR=sony

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"

#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/xiaomi/lava

TARGET_BOOTLOADER_BOARD_NAME := lava

# Inherit from mt6768-common
-include device/xiaomi/mt6768-common/BoardConfigCommon.mk

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_KERNEL_CONFIG := lancelot_defconfig
TARGET_KERNEL_CLANG_VERSION := proton
TARGET_CLANG_PREBUILTS_VERSION := proton
TARGET_KERNEL_CLANG_PATH := $(shell pwd)/prebuilts/clang/host/linux-x86/clang-proton
TARGET_KERNEL_OPTIONAL_LD := true

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Assert
TARGET_OTA_ASSERT_DEVICE := lancelot,galahad,shiva

# HIDL
ODM_MANIFEST_SKUS += \
    galahad

ODM_MANIFEST_GALAHAD_FILES := $(DEVICE_PATH)/manifest_galahad.xml

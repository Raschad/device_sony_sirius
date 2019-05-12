# Copyright (C) 2013 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from the shinano-common
include device/sony/shinano-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/sirius

# Assert
TARGET_OTA_ASSERT_DEVICE := D6502,D6503,D6506,D6543,sirius

# Device-specific properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Kernel properties
TARGET_KERNEL_CONFIG := lineageos_shinano_sirius_defconfig

# Partition information
BOARD_VOLD_MAX_PARTITIONS := 25
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12656242688 # 12656259072 - 16384
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/input/max1187x/wakeup_gesture"

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from proprietary files
include vendor/sony/sirius/BoardConfigVendor.mk

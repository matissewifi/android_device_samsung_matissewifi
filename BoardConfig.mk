# Copyright (C) 2014-2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# inherit from common matisse
# Assert
TARGET_OTA_ASSERT_DEVICE := matissewifi,matissewifiue,matissewi

include device/samsung/matisse-common/BoardConfigCommon.mk

# Shims
#TARGET_LD_SHIM_LIBS += \
#        /system/vendor/lib/libmmcamera_imx175.so|libshim_imx175.so

# Kernel
TARGET_KERNEL_CONFIG := lineage_matissewifi_defconfig

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8226
#TARGET_LIBINIT_MSM8226_DEFINES_FILE := device/samsung/s3ve3gxx/init/init_s3ve3g.cpp

# NFC
# include $(COMMON_PATH)/nfc/pn547/board.mk

# Radio/RIL
#include $(COMMON_PATH)/radio/single/board.mk

# inherit from the proprietary version
-include vendor/samsung/matissewifi/BoardConfigVendor.mk

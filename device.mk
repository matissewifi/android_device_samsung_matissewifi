#
# Copyright (C) 2014 The CyanogenMod Project
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
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/matissewifi/matissewifi-vendor.mk)

# Camera
# PRODUCT_PACKAGES += \
#    libshim_imx175

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# SM-T530NU
# IR Blaster Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# SM-T530NU
# IR Blaster
#PRODUCT_PACKAGES += \
    consumerir.default
#    consumerir.msm8226 \

# NFC
# $(call inherit-product, device/samsung/matisse-common/nfc/pn547/product.mk)

# common matisse
$(call inherit-product, device/samsung/matisse-common/matisse.mk)

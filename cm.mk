# Copyright (C) 2014 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit from matissewifi device
$(call inherit-product, device/samsung/matissewifi/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := cm_matissewifi
PRODUCT_DEVICE := matissewifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := T530

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=samsung/matissewifixx/matissewifi:5.0.2/LRX22G/T530XXU1BOD8:user/release-keys PRIVATE_BUILD_DESC="matissewifixx-user 5.0.2 LRX22G T530XXU1BOD8 release-keys"

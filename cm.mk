# Inherit device configuration
$(call inherit-product, device/samsung/matissewifi/device.mk)
$(call inherit-product, device/samsung/matisse-common/matisse.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
#$(call inherit-product, vendor/cm/config/telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_matissewifi
PRODUCT_DEVICE := matissewifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T530

PRODUCT_BUILD_PROP_OVERRIDES += \
PRODUCT_NAME=matissewifi

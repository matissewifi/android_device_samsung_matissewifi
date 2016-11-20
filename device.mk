LOCAL_PATH := device/samsung/matissewifi

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/matissewifi/matissewifi-vendor.mk)

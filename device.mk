LOCAL_PATH := device/samsung/matissewifi

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SM-T530NU
# IR Blaster Permissions
PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# IR Blaster
PRODUCT_PACKAGES += \
	consumerir.default

# matisse-common
$(call inherit-product, device/samsung/matisse-common/matisse.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/samsung/matissewifi/matissewifi-vendor.mk)

# DJABHipHop Builds(Personal Build)
#DEVICE_SUPPORT_DJ :=true

# TODO: opengapps
#$(call inherit-product, vendor/light/config/opengapps.mk)

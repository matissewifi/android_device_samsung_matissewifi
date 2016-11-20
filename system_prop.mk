# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libargs=-d /dev/ttyS0 \
	rild.libpath=/system/lib/libsec-ril.so \
	ro.use_data_netmgrd=false \
	persist.data.netmgrd.qos.enable=false \
	ro.data.large_tcp_window_size=true \
	telephony.lteOnCdmaDevice=0 \
	persist.radio.add_power_save=1 \
	persist.radio.apm_sim_not_pwdn=1

# Disable ril
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=yes

# WIFI model
PRODUCT_PROPERTY_OVERRIDES += \
	ro.carrier=wifi-only

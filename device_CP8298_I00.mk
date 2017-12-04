# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xxhdpi 380dpi hdpi tvdpi mdpi ldpi

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/coolpad/CP8298_I00/CP8298_I00-vendor.mk)

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 \
	ro.allow.mock.location=1 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	persist.service.acm.enable=0 \
    ro.oem_unlock_supported=1 \
	ro.mount.fs=EXT4 \
	camera.disable_zsl_mode=1

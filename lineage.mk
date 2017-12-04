# Inherit some common stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/device_CP8298_I00.mk)

# Device display
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 720

# Device identifier
PRODUCT_BRAND := coolpad
PRODUCT_DEVICE := CP8298_I00
PRODUCT_MANUFACTURER := coolpad
PRODUCT_MODEL := CP8298_I00
PRODUCT_NAME := lineage_CP8298_I00
PRODUCT_RELEASE_NAME := CP8298_I00
PRODUCT_RESTRICT_VENDOR_FILES := false

# Release name
PRODUCT_RELEASE_NAME := RMX1901

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# For PBRP
$(call inherit-product, vendor/pb/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := RMX1901
PRODUCT_NAME := omni_RMX1901
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme X
PRODUCT_MANUFACTURER := realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.vendor.build.security_patch=2099-12-31

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=RMX1901 \
    BUILD_PRODUCT=RMX1901 \
    TARGET_DEVICE=RMX1901

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device

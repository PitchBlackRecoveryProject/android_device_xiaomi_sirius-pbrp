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
PRODUCT_BRAND := Realme
PRODUCT_MODEL := RMX1901
PRODUCT_MANUFACTURER := Realme

PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.vendor.build.security_patch=2099-12-31

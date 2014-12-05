## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Release name
PRODUCT_RELEASE_NAME := dior

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/dior/device_dior.mk)

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Xiaomi/dior/dior:4.4.4/KTU84P/4.11.28:user/release-keys PRIVATE_BUILD_DESC="dior-user 4.4.4 KTU84P 4.11.28 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dior
PRODUCT_NAME := cm_dior
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM_NOTE_1LTE
PRODUCT_MANUFACTURER := Xiaomi

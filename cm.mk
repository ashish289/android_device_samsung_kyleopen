# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kyleopen/kyleopen.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kyleopen
PRODUCT_NAME := cm_kyleopen
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7562L
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := GT-S7562L

# Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

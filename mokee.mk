$(call inherit-product, device/nubia/nx403a/full_nx403a.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)


# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_RELEASE_NAME := NX403A
PRODUCT_NAME := mk_nx403a


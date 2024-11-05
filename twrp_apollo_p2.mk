# Inherit from products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common TWRP
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, device/allwinner/apollo-p2/device.mk)

# Device identifier
PRODUCT_DEVICE := apollo-p2
PRODUCT_NAME := twrp_apollo_p2
PRODUCT_BRAND := Allwinner
PRODUCT_MANUFACTURER := Allwinner
PRODUCT_MODEL := orangepizero2w


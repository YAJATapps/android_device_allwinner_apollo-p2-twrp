# Whether the build is for orange pi zero 2w (true) or orange pi zero 3 (false)
PRODUCT_ORANGE_PI_ZERO_2W := true

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
ifeq ($(PRODUCT_ORANGE_PI_ZERO_2W), true)
    PRODUCT_MODEL := orangepizero2w
    TARGET_PREBUILT_KERNEL := device/allwinner/apollo-p2/kernel
else
    PRODUCT_MODEL := orangepizero3
    TARGET_PREBUILT_KERNEL := device/allwinner/apollo-p2/kernel3
endif


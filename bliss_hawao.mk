#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/hawao/device.mk)

# Inherit some common BlissROMs stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Gapps
TARGET_STOCK_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := bliss_hawao
PRODUCT_DEVICE := hawao
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g42
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/hawao_g/hawao:13/T2SES33.73-23-2-4/234bb3-b18d2:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=hawao_g \
    PRIVATE_BUILD_DESC="hawao_g-user 13 T2SES33.73-23-2-4 234bb3-b18d2 release-keys"
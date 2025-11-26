#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from salami device
$(call inherit-product, device/oneplus/salami/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Call mindthegapps
$(call inherit-product, vendor/gapps/arm64/arm64-vendor.mk)
 
WITH_GAPPS := true

PRODUCT_NAME := lineage_salami
PRODUCT_DEVICE := salami
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PHB110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1775718405982 release-keys" \
    BuildFingerprint=OnePlus/PHB110/OP591BL1:16/TP1A.220905.001/T.25aae10-258862-26dfb8:user/release-keys \
    DeviceName=OP591BL1 \
    DeviceProduct=PHB110 \
    SystemDevice=OP591BL1 \
    SystemName=PHB110

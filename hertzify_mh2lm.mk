#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device
$(call inherit-product, device/lge/mh2lm/device.mk)

# HertzifyOS build configuration
TARGET_BOOT_ANIMATION_RES := 1080
HERTZIFY_MAINTAINER := Xtrakari
HERTZIFY_BUILD_TYPE := UNOFFICIAL

# Inherit some common HertzifyOS stuff.
$(call inherit-product, vendor/hertzify/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := hertzify_mh2lm
PRODUCT_DEVICE := mh2lm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := G8X ThinQ

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=mh2lm \
    BuildDesc="mh2lm-user 12 SKQ1.211103.001 223331636afae release-keys" \
    BuildFingerprint=lge/mh2lm/mh2lm:12/SKQ1.211103.001/223331636afae:user/release-keys

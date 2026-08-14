#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from device
$(call inherit-product, device/lge/mh2lm/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# RisingOS-Flags
TORCH_STR_SUPPORTED := true

# Addons
TARGET_HAS_UDFPS := true

# Gms
WITH_GMS := false
TARGET_CORE_GMS := false
TARGET_CORE_GMS_EXTRAS := false

# Ship Pixel Launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Lawnchair Prebuilt
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# rising Maintainer
RISING_MAINTAINER := Xtrakari

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_mh2lm
PRODUCT_DEVICE := mh2lm
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_MODEL := G8X ThinQ

PRODUCT_GMS_CLIENTID_BASE := android-lge

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=mh2lm \
    BuildDesc="mh2lm-user 12 SKQ1.211103.001 223331636afae release-keys" \
    BuildFingerprint=lge/mh2lm/mh2lm:12/SKQ1.211103.001/223331636afae:user/release-keys \
    RisingMaintainer="Xtrakari" \
    RisingChipset="Snapdragon 855"

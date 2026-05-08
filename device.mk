#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oneplus/waffle

# Shipping API level
BOARD_SHIPPING_API_LEVEL    := 35
PRODUCT_SHIPPING_API_LEVEL  := 35
PRODUCT_TARGET_VNDK_VERSION := 35

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Kernel
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS   := false
PRODUCT_ENABLE_UFFD_GC                          := true

PRODUCT_PACKAGES += \
    lpflash \
    lpmake \
    lpunpack

# OTA certs
PRODUCT_EXTRA_RECOVERY_KEYS += \
	$(DEVICE_PATH)/security/local_OTA \
	$(DEVICE_PATH)/security/special_OTA

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# some OrangeFox-specific settings
$(call inherit-product, $(LOCAL_PATH)/fox_waffle.mk)
#

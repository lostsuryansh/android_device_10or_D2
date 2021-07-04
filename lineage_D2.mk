#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := D2

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# Inherit from whyred device
$(call inherit-product, device/10or/D2/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_D2
PRODUCT_DEVICE := D2
PRODUCT_MANUFACTURER := 10or
PRODUCT_BRAND := 10or
PRODUCT_MODEL := D2
PRODUCT_FULL_TREBLE_OVERRIDE := true

TARGET_VENDOR_PRODUCT_NAME := D2
TARGET_VENDOR_DEVICE_NAME := D2
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=D2 PRODUCT_NAME=D2
PRODUCT_GMS_CLIENTID_BASE := android-huaqin
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="D2-user 8.1.0 OPM1.171019.019 10or_D2_V1_0_50 release-keys"
BUILD_FINGERPRINT := 10or/D2/D2:8.1.0/OPM1.171019.019/10or_D2_V1_0_50:user/release-keys

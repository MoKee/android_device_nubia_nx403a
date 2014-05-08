#
# Copyright 2012 The Android Open Source Project
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

# Inherit from our custom product configuration
$(call inherit-product, vendor/mk/config/common_full_phone.mk)
$(call inherit-product, vendor/mk/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/nubia/nx403a/full_nx403a.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

PRODUCT_NAME := mk_nx403a
PRODUCT_DEVICE := nx403a
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := NX403A
PRODUCT_MANUFACTURER := nubia

$(call inherit-product-if-exists, vendor/nubia/nx403a/nx403a-vendor.mk)

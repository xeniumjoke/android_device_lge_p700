#
# Copyright (C) 2011 The Android Open-Source Project
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

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/p700/p700-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p700/overlay

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_AAPT_CONFIG := normal hdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.u0.rc:root/init.u0.rc \
    $(LOCAL_PATH)/ueventd.u0.rc:root/ueventd.u0.rc

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/u0_keypad.kl:system/usr/keylayout/u0_keypad.kl \
    $(LOCAL_PATH)/configs/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/configs/melfas-ts.kl:system/usr/keylayout/qwerty.kl \
    $(LOCAL_PATH)/configs/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl \
    $(LOCAL_PATH)/configs/fstab.u0:root/fstab.u0

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Camera
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/linker:system/bin/linker \
    $(LOCAL_PATH)/prebuilt/lib/libc.so:system/lib/libc.so \
    $(LOCAL_PATH)/prebuilt/lib/libdl.so:system/lib/libdl.so \
    $(LOCAL_PATH)/prebuilt/lib/liblog.so:system/lib/liblog.so \
    $(LOCAL_PATH)/prebuilt/lib/libm.so:system/lib/libm.so \
    $(LOCAL_PATH)/prebuilt/lib/libstdc++.so:system/lib/libstdc++.so \
    $(LOCAL_PATH)/prebuilt/lib/libthread_db.so:system/lib/libthread_db.so

#bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/bin/hwmac:system/bin/hwmac \
    $(LOCAL_PATH)/prebuilt/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    $(LOCAL_PATH)/prebuilt/lib/libbt-vendor.so:system/lib/libbt-vendor.so

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib/modules/wlan.ko:system/lib/modules/wlan.ko
# Misc
PRODUCT_PACKAGES += \
    libnetcmdiface \
    Torch \
    Camera


# Enable for debugging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.debuggable=1 \
    persist.service.adb.enable=1

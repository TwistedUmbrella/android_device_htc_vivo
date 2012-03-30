#
# Copyright (C) 2011 The CyanogenMod Project
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

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/vivo/kernel/init.vivo.rc:root/init.vivo.rc \
    device/htc/vivo/kernel/ueventd.vivo.rc:root/ueventd.vivo.rc 

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/vivo/vivo-vendor.mk)
$(call inherit-product-if-exists, vendor/twisted/google-facelock.mk)

# (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r3 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y

DEVICE_PACKAGE_OVERLAYS += device/htc/vivo/overlay

# Devie XML Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Device XML Properties
PRODUCT_COPY_FILES += \
    device/htc/vivo/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    device/htc/vivo/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/vivo/system/etc/gps.conf:system/etc/gps.conf

PRODUCT_PACKAGES += \
    lights.vivo \
    sensors.vivo \
    gps.vivo

# Keylayouts and Touchscreen
PRODUCT_COPY_FILES += \
    device/htc/vivo/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/vivo/system/usr/idc/cy8c-touchscreen.idc:system/usr/idc/cy8c-touchscreen.idc \
    device/htc/vivo/system/usr/idc/elan-touchscreen.idc:system/usr/idc/elan-touchscreen.idc \
    device/htc/vivo/system/usr/idc/vivo-keypad.idc:system/usr/idc/vivo-keypad.idc \
    device/htc/vivo/system/usr/keychars/atmel-touchscreen.kcm:system/usr/keychars/atmel-touchscreen.kcm \
    device/htc/vivo/system/usr/keychars/cy8c-touchscreen.kcm:system/usr/keychars/cy8c-touchscreen.kcm \
    device/htc/vivo/system/usr/keychars/elan-touchscreen.kcm:system/usr/keychars/elan-touchscreen.kcm \
    device/htc/vivo/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/vivo/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/vivo/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/vivo/system/usr/keylayout/vivo-keypad.kl:system/usr/keylayout/vivo-keypad.kl \
    device/htc/vivo/system/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/vivo/system/usr/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/vivo/system/usr/keylayout/elan-touchscreen.kl:system/usr/keylayout/elan-touchscreen.kl

#Firmware
PRODUCT_COPY_FILES += \
    device/htc/vivo/system/etc/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/vivo/system/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/vivo/system/etc/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    device/htc/vivo/system/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/vivo/system/etc/firmware/default_org_nel.acdb:system/etc/firmware/default_org_nel.acdb

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/vivo/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/vivo/system/etc/AdieHWCodec_NEL.csv:system/etc/AdieHWCodec_NEL.csv \
    device/htc/vivo/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/vivo/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/vivo/system/etc/AIC3254_REG_DualMic_NEL.csv:system/etc/AIC3254_REG_DualMic_NEL.csv \
    device/htc/vivo/system/etc/AIC3254_REG_DualMicXB.csv:system/etc/AIC3254_REG_DualMicXB.csv \
    device/htc/vivo/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/vivo/system/etc/TPA2051_CFG_NEL.csv:system/etc/TPA2051_CFG_NEL.csv \
    device/htc/vivo/system/etc/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/vivo/system/etc/CodecDSPID_NEL.txt:system/etc/CodecDSPID_NEL.txt \
    device/htc/vivo/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/vivo/system/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    device/htc/vivo/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    device/htc/vivo/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    device/htc/vivo/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    device/htc/vivo/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    device/htc/vivo/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    device/htc/vivo/system/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    device/htc/vivo/system/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/vivo/system/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/vivo/system/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/vivo/system/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/vivo/system/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg 

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# High-density art, but English locale
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    device/htc/vivo/system/etc/vold.fstab:system/etc/vold.fstab

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/vivo/kernel/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/vivo/kernel/lib/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# Script to signal boot completion for init.d
PRODUCT_COPY_FILES += \
    device/htc/vivo/kernel/etc/init.d/100complete:system/etc/init.d/100complete

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# media profiles and capabilities spec ## not sure for vivo
$(call inherit-product, device/htc/vivo/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/vivo/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := htc_vivo
PRODUCT_DEVICE := vivo
PRODUCT_MODEL := HTC Incredible S
PRODUCT_MANUFACTURER := HTC

#Softkey Rotation Script
PRODUCT_COPY_FILES += \
    device/htc/vivo/rotate_lights.sh:/system/etc/rotate_lights.sh

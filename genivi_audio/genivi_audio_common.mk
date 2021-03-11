# Copyright (c) 2020 TietoEVRY. All rights reserved.

# Inherit from common
$(call inherit-product, device/genivi/common/common.mk)

# Here goes audio packages
BOARD_SEPOLICY_DIRS += vendor/genivi/packages/audiohal/sepolicy

DEVICE_PACKAGE_OVERLAYS += device/genivi/audio/overlay

PRODUCT_PACKAGES += audio.primary.genivi
PRODUCT_PACKAGES += genivi.audiorelay

PRODUCT_PROPERTY_OVERRIDES += ro.hardware.audio.primary=genivi
PRODUCT_PROPERTY_OVERRIDES += ro.aae.simulateMultiZoneAudio=true

USE_XML_AUDIO_POLICY_CONF := 1

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.broadcastradio.xml:system/etc/permissions/android.hardware.broadcastradio.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    device/genivi/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \
    device/genivi/audio/car_audio_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/car_audio_configuration.xml \

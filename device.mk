################################################################################
# kernel
################################################################################
PRODUCT_COPY_FILES += \
	kernel/arch/arm/boot/uImage:kernel

################################################################################
# init
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/init.s5p4418_general.rc:root/init.s5p4418_general.rc \
	device/nexell/s5p4418_general/init.s5p4418_general.usb.rc:root/init.s5p4418_general.usb.rc \
	device/nexell/s5p4418_general/init.recovery.s5p4418_general.rc:root/init.recovery.s5p4418_general.rc \
	device/nexell/s5p4418_general/fstab.s5p4418_general:root/fstab.s5p4418_general \
	device/nexell/s5p4418_general/ueventd.s5p4418_general.rc:root/ueventd.s5p4418_general.rc \
	device/nexell/s5p4418_general/adj_lowmem.sh:root/adj_lowmem.sh \
	device/nexell/s5p4418_general/bootanimation.zip:system/media/bootanimation.zip

################################################################################
# recovery
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/busybox:busybox

################################################################################
# key
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/keypad_s5p4418_general.kl:system/usr/keylayout/keypad_s5p4418_general.kl \
	device/nexell/s5p4418_general/keypad_s5p4418_general.kcm:system/usr/keychars/keypad_s5p4418_general.kcm

################################################################################
# touch
################################################################################
PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_general/tsc2007.idc:system/usr/idc/tsc2007.idc

################################################################################
# camera
################################################################################
PRODUCT_PACKAGES += \
	camera.slsiap

################################################################################
# hwc executable
################################################################################
PRODUCT_PACKAGES += \
    report_hwc_scenario

################################################################################
# miracast sink
################################################################################
#PRODUCT_PACKAGES += \
	#Mira4U

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

################################################################################
# audio
################################################################################
# Dual Audio
EN_DUAL_AUDIO := true
EN_DUAL_AUDIO_PATH_SPDIF := true
ifeq ($(EN_DUAL_AUDIO),true)
PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/slsiap/prebuilt/libnxdualaudio/lib/libnxdualaudio.so:system/lib/libnxdualaudio.so
endif

# mixer paths
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/audio/tiny_hw.s5p4418_general.xml:system/etc/tiny_hw.s5p4418_general.xml
# audio policy configuration
ifeq ($(EN_DUAL_AUDIO_PATH_SPDIF),true)
PRODUCT_COPY_FILES += \
    device/nexell/s5p4418_general/audio/audio_policy_disable_spdif.conf:system/etc/audio_policy.conf
else
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/audio/audio_policy.conf:system/etc/audio_policy.conf
endif

################################################################################
# General application 
################################################################################
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/iap_test/iap_test:system/bin/iap_test

################################################################################
# media, camera
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/media_codecs.xml:system/etc/media_codecs.xml \
	device/nexell/s5p4418_general/media_profiles.xml:system/etc/media_profiles.xml

################################################################################
# camera
################################################################################
PRODUCT_PACKAGES += \
	camera.slsiap

################################################################################
# hwc executable
################################################################################
PRODUCT_PACKAGES += \
	report_hwc_scenario

################################################################################
# modules 
################################################################################
# ogl
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/prebuilt/library/libVR.so:system/lib/libVR.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libEGL_vr.so:system/lib/egl/libEGL_vr.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libGLESv1_CM_vr.so:system/lib/egl/libGLESv1_CM_vr.so \
	hardware/samsung_slsi/slsiap/prebuilt/library/libGLESv2_vr.so:system/lib/egl/libGLESv2_vr.so

# ffmpeg libraries
EN_FFMPEG_EXTRACTOR := true
EN_FFMPEG_AUDIO_DEC := true
ifeq ($(EN_FFMPEG_EXTRACTOR),true)
PRODUCT_COPY_FILES += \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavcodec-2.1.4.so:system/lib/libavcodec-2.1.4.so    \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavdevice-2.1.4.so:system/lib/libavdevice-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavfilter-2.1.4.so:system/lib/libavfilter-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavformat-2.1.4.so:system/lib/libavformat-2.1.4.so  \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavresample-2.1.4.so:system/lib/libavresample-2.1.4.so \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libavutil-2.1.4.so:system/lib/libavutil-2.1.4.so      \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswresample-2.1.4.so:system/lib/libswresample-2.1.4.so \
	hardware/samsung_slsi/slsiap/omx/codec/ffmpeg/libs/libswscale-2.1.4.so:system/lib/libswscale-2.1.4.so
endif

################################################################################
# wifi
################################################################################
PRODUCT_COPY_FILES += \
    hardware/samsung_slsi/slsiap/prebuilt/modules/wlan.ko:/system/lib/modules/wlan.ko

################################################################################
# generic
################################################################################
PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml

PRODUCT_COPY_FILES += \
	linux/platform/s5p4418/library/lib/libnxvidrc_android.so:system/lib/libnxvidrc_android.so

PRODUCT_COPY_FILES += \
	device/nexell/s5p4418_general/busybox-armv7l:system/bin/busybox-armv7l \
	device/nexell/s5p4418_general/memtester1-1:system/bin/memtester1-1 \
	device/nexell/s5p4418_general/hwreg_cmd:system/bin/hwreg_cmd

PRODUCT_AAPT_CONFIG := normal large xlarge hdpi xhdpi xxhdpi
#PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
	device/nexell/s5p4418_general/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
	LiveWallpapersPicker \
	librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck

# tslib
PRODUCT_PACKAGES += \
                    TSCalibration   \
                    libtslib    \
                    inputraw    \
                    pthres      \
                    dejitter    \
                    linear      \
                    tscalib

PRODUCT_COPY_FILES += \
                    external/tslib/ts.conf:system/etc/ts.conf
# Linaro
#PRODUCT_PACKAGES += \
	#GLMark2 \
	#libglmark2-android

# Product Property
# common
PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=15 \
	ro.sf.lcd_density=160

# 4330 openl ui property
#PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072 \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.path_cache_size=16 \
	ro.hwui.shape_cache_size=4 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flush_rate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024 \
	ro.hwui.disable_scissor_opt=true

# setup dalvik vm configs.
#$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# The OpenGL ES API level that is natively supported by this device.
# This is a 16.16 fixed point number
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PACKAGES += \
	VolantisLayouts5p4418_general

PRODUCT_PACKAGES += \
	rtw_fwloader

# Enable AAC 5.1 output
#PRODUCT_PROPERTY_OVERRIDES += \
	media.aac_51_output_enabled=true

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# ota updater test
#PRODUCT_PACKAGES += \
	#OTAUpdateCenter

# miracast sink
 #PRODUCT_PACKAGES += \
	#Mira4U

# wifi
ifeq ($(BOARD_WIFI_VENDOR),realtek)
$(call inherit-product-if-exists, hardware/realtek/wlan/config/p2p_supplicant.mk)
endif

ifeq ($(BOARD_WIFI_VENDOR),broadcom)
WIFI_BAND := 802_11_BG
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
endif

# 3G/LTE

# call slsiap
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/slsiap.mk)

# google gms
#$(call inherit-product-if-exists, vendor/google/gapps/gapps.mk)

# Nexell Application
$(call inherit-product-if-exists, vendor/nexell/apps/nxvideoplayer.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxaudioplayer.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/nxipodaudioplayer.mk)
$(call inherit-product-if-exists, vendor/nexell/apps/smartsync.mk)

# iOS iAP/Tethering
BOARD_USES_IOS_IAP_TETHERING := true
ifeq ($(BOARD_USES_IOS_IAP_TETHERING),true)
$(call inherit-product-if-exists, hardware/samsung_slsi/slsiap/ios_tether/ios_tethering.mk)
endif



$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/kyleopen/kyleopen-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/kyleopen/overlay

PRODUCT_AAPT_CONFIG := normal mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x27a \
    audio_policy.conf \
    libaudioutils \
    audio.primary.msm7x27a

# Bluetooth
PRODUCT_PACKAGES += \
    btmac

# Device
PRODUCT_PACKAGES += \
    DeviceParts \
    make_ext4fs \
    setup_fs \
    com.android.future.usb.accessory

# GPS
PRODUCT_PACKAGES += \
    gps.msm7x27a

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Lights
PRODUCT_PACKAGES += \
    lights.msm7x27a

## Other HALs
PRODUCT_PACKAGES += \
    camera.msm7x27a \
    libhealthd.msm7x27a

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Power HAL
PRODUCT_PACKAGES += \
    power.msm7x27a

# Video
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/kyleopen/ramdisk/fstab.qcom:root/fstab.qcom \
    device/samsung/kyleopen/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/samsung/kyleopen/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/samsung/kyleopen/ramdisk/lpm.rc:root/lpm.rc \
    device/samsung/kyleopen/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc 

# Prebuilt
PRODUCT_COPY_FILES += \
    device/samsung/kyleopen/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/samsung/kyleopen/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/samsung/kyleopen/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/samsung/kyleopen/prebuilt/system/etc/calib.dat:system/etc/calib.dat \
    device/samsung/kyleopen/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/samsung/kyleopen/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/samsung/kyleopen/prebuilt/system/etc/param.dat:system/etc/param.dat \
    device/samsung/kyleopen/prebuilt/system/etc/sensors.dat:system/etc/sensors.dat \
    device/samsung/kyleopen/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab


# Hardware features available on this device
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Recovery
PRODUCT_COPY_FILES += \
    device/samsung/kyleopen/recovery/sbin/rmt_storage_recovery:recovery/root/sbin/rmt_storage_recovery \
    device/samsung/kyleopen/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    device/samsung/kyleopen/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

# Properties

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/lib/libsec-ril.so \
    rild.libargs=-d /dev/smd0 \
    ro.telephony.ril_class=SamsungQcomRIL \
    ro.telephony.ril.v3=datacall,icccardstatus,facilitylock \
    ro.telephony.call_ring.multiple=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.remote.autoconnect=true \
    ro.bluetooth.request.master=true \
    ro.bt.bdaddr_path=/data/misc/bluedroid/bdaddr \
    ro.qualcomm.bluetooth.dun=true \
    ro.qualcomm.bluetooth.ftp=true

PRODUCT_PROPERTY_OVERRIDES += \
    debug.gr.numframebuffers=3 \
    debug.egl.recordable.rgba8888=1 \
    debug.composition.type=dyn \
    debug.hwc.dynThreshold=1.9 \
    ro.bq.gpu_to_cpu_unsupported=1 \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=240 \
    persist.sys.force_highendgfx=0

#   ro.max.fling_velocity=4000 \

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.jit.codecachesize=1 
    
#   ro.config.low_ram=true

PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    use.non-omx.mp3.decoder=true \
    use.non-omx.aac.decoder=true

PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    dev.pm.dyn_sample_period=700000 \
    dev.pm.dyn_samplingrate=1 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    ro.vold.umsdirtyratio=50 \
    persist.sys.vold.switchablepair=sdcard0,sdcard1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.webview.provider=classic

PRODUCT_PROPERTY_OVERRIDES += \
    ro.cwm.enable_key_repeat=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=true \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=60

$(call inherit-product, device/samsung/kyleopen/phone-hdpi-768-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_kyleopen
PRODUCT_DEVICE := kyleopen
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := GT-S7562L

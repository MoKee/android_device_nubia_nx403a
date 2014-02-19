DEVICE_PACKAGE_OVERLAYS += device/nubia/nx403a/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

LOCAL_PATH := device/nubia/nx403a

# Snd_soc_msm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_auxpcm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_Fusion3:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3 \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_2x_Fusion3_auxpcm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_auxpcm \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_I2S:system/etc/snd_soc_msm/snd_soc_msm_I2S \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_I2SFusion:system/etc/snd_soc_msm/snd_soc_msm_I2SFusion \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_Sitar:system/etc/snd_soc_msm/snd_soc_msm_Sitar \
    $(LOCAL_PATH)/snd_soc_msm/snd_soc_msm_Sitar_auxpcm:system/etc/snd_soc_msm/snd_soc_msm_Sitar_auxpcm

# Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/egl.cfg:system/etc/egl.cfg \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/configs/init.qcom.sensor.sh:system/etc/init.qcom.sensor.sh \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/hcidump.sh:system/etc/hcidump.sh \
    $(LOCAL_PATH)/configs/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    $(LOCAL_PATH)/configs/init.crda.sh:system/etc/init.crda.sh \
    $(LOCAL_PATH)/configs/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/configs/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/configs/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/init.qcom.thermal_conf.sh:system/etc/init.qcom.thermal_conf.sh \
    $(LOCAL_PATH)/configs/usf_post_boot.sh:system/etc/usf_post_boot.sh \
    $(LOCAL_PATH)/configs/spn-conf.xml:system/etc/spn-conf.xml

# WIFI
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

# Thermald
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermald/thermald.conf:system/etc/thermald-8064sm.conf \
    $(LOCAL_PATH)/thermald/thermal-engine.conf:system/etc/thermal-engine.conf

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Specific keys
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keys/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    $(LOCAL_PATH)/keys/Button_Jack.kl:system/usr/keylayout/Button_Jack.kl \
    $(LOCAL_PATH)/keys/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    $(LOCAL_PATH)/keys/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keys/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    $(LOCAL_PATH)/keys/keypad_8960_liquid.kl:system/usr/keylayout/keypad_8960_liquid.kl \
    $(LOCAL_PATH)/keys/philips_remote_ir.kl:system/usr/keylayout/philips_remote_ir.kl \
    $(LOCAL_PATH)/keys/samsung_remote_ir.kl:system/usr/keylayout/samsung_remote_ir.kl \
    $(LOCAL_PATH)/keys/ue_rf4ce_remote.kl:system/usr/keylayout/ue_rf4ce_remote.kl \
    $(LOCAL_PATH)/keys/Generic.kl:system/usr/keylayout/Generic.kl \
    $(LOCAL_PATH)/keys/cyttsp4_mt.idc:system/usr/idc/cyttsp4_mt.idc \
    $(LOCAL_PATH)/keys/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
    $(LOCAL_PATH)/keys/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
    $(LOCAL_PATH)/keys/zte_cap_touchscreen.idc:system/usr/idc/zte_cap_touchscreen.idc

# prebuilt sdcard binary
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/sdcard:system/bin/sdcard

# prebuilt libcsd-client.so
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/libcsd-client.so:system/bin/libcsd-client.so

# GPS Location
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/dbus.conf:system/etc/dbus.conf \
    $(LOCAL_PATH)/gps/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/quipc.conf:system/etc/quipc.conf \
    $(LOCAL_PATH)/gps/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/xtwifi.conf:system/etc/xtwifi.conf

# TWRP fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery.fstab:recovery/root/etc/recovery.fstab
    
# RAMDISK
PRODUCT_PACKAGES += fstab.qcom
PRODUCT_PACKAGES += init.qcom.rc
PRODUCT_PACKAGES += init.qcom.sh
PRODUCT_PACKAGES += init.qcom.usb.rc
PRODUCT_PACKAGES += init.qcom.usb.sh
PRODUCT_PACKAGES += init.ril.rc
PRODUCT_PACKAGES += init.target.rc
PRODUCT_PACKAGES += ueventd.qcom.rc
PRODUCT_PACKAGES += init.qcom.class_core.sh
PRODUCT_PACKAGES += init.qcom.class_main.sh
PRODUCT_PACKAGES += init.qcom.early_boot.sh
PRODUCT_PACKAGES += init.qcom.syspart_fixup.sh

# Boot charger
PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    tinymix \
    libemoji

#dalvik
PRODUCT_TAGS += dalvik.gc.type-precise

#LIBGESTURES
PRODUCT_PACKAGES += \
    libgestures \
    gestures.msm8960

# Bluetooth
PRODUCT_PACKAGES += \
    hci_qcomm_init \
    bluetoothd

PRODUCT_PACKAGES += \
    bdAddrLoader \
    libwfcu \
    conn_init

# GPS
PRODUCT_PACKAGES += \
    libloc_adapter \
    libloc_eng \
    libloc_api_v02 \
    libgps.utils

# QRNG
PRODUCT_PACKAGES += \
    qrngp

# Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert \
    hwcomposer.msm8960 \
    gralloc.msm8960 \
    copybit.msm8960 \
    memtrack.msm8960

# Lights
PRODUCT_PACKAGES += \
    lights.nx403a

# Omx
PRODUCT_PACKAGES += \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVenc \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# QCOM rngd
PRODUCT_PACKAGES += \
    qrngd

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    e2fsck      \
    make_ext4fs \
    setup_fs

# Other apps
PRODUCT_PACKAGES += \
    Torch

# qcom
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    ro.qc.sdk.sensors.gestures=false

# Audio Configuration
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.handset.mic=digital \
    persist.audio.fluence.mode=endfire \
    persist.audio.lowlatency.rec=false \
    mpq.audio.decode=true \
    media.aac_51_output_enabled=true \
    persist.audio.vr.enable=false

# common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage,adb

PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.call_ring.multiple=0 \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=131072 \
    ro.sf.lcd_density=320

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.locale.language=zh \
    ro.product.locale.region=CN \
    persist.sys.timezone=Asia/Shanghai

# selinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Assert
TARGET_OTA_ASSERT_DEVICE := nx403a,NX403A,nx403,NX403

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-hwui-memory.mk)
#$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, device/qcom/msm7627a/msm7627a.mk)
$(call inherit-product, device/qcom/common/common.mk)
$(call inherit-product-if-exists, vendor/samsung/kylessopen/kylessopen-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/kylessopen/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/kylessopen/ramdisk,root)

# Prebuilt
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/samsung/kylessopen/prebuilt/system,system)

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kylessopen
PRODUCT_NAME := full_kylessopen
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S7560M
PRODUCT_MANUFACTURER := samsung
PRODUCT_RELEASE_NAME := GT-S7560M

## Bootanimation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit AOSP device configuration for kingdom.
$(call inherit-product, device/htc/kingdom/full_kingdom.mk)

# Inherit some common cfx stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit cdma config
$(call inherit-product, vendor/cm/config/cdma.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cfx_kingdom
PRODUCT_RELEASE_NAME := kingdom
PRODUCT_BRAND := htc
PRODUCT_DEVICE := kingdom
PRODUCT_MODEL := Evo Design 4G
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_kingdom BUILD_FINGERPRINT=sprint/htc/kingdom:4.2.2/JDQ39/409533.0:user/user-debug PRIVATE_BUILD_DESC="4.2.2 JDQ39 409533.0 user-debug"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Osiris
PRODUCT_VERSION_DEVICE_SPECIFIC := M1


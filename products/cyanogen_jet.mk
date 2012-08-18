# Inherit AOSP device configuration for galaxys.
$(call inherit-product, device/samsung/jet/full_jet.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_jet
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := jet
PRODUCT_MODEL := GT-S8000
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jet BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/jet/jet:2.3.5/GRJ90/138666:user/release-keys PRIVATE_BUILD_DESC="jet-user 2.3.5 GRJ90 138666 release-keys" BUILD_NUMBER=138666

# Extra jet overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/jet

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-7-$(shell date +%m%d%Y)-NIGHTLY-jet
else
    ifdef CYANOGEN_RELEASE
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-jet
    else
        PRODUCT_PROPERTY_OVERRIDES += \
            ro.modversion=CyanogenMod-7.1.0-jet-KANG
    endif
endif

#
# Copy jet specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

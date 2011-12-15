# Inherit AOSP device configuration for galaxys.
$(call inherit-product, device/samsung/spica/full_spica.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_spica
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := spica
PRODUCT_MODEL := GT-I5700
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=spica BUILD_ID=GRJ90 BUILD_DISPLAY_ID=GWK74 BUILD_FINGERPRINT=samsung/spica/spica:2.3.7/GRJ90/138666:user/release-keys PRIVATE_BUILD_DESC="spica-user 2.3.7 GRJ90 138666 release-keys" BUILD_NUMBER=138666

# Extra spica overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/spica

#
# Set ro.modversion
#
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=CyanogenMod-7.2-NIGHTLY-Spica-alpha-7.2

#
# Copy spica specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

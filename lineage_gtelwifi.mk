# Inherit from those product configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk) # Use core.mk if your device is 32-bit only
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from gtelwifi device setup
$(call inherit-product, device/samsung/gtelwifi/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
# device/samsung/gtelwifi/lineage_gtelwifi.mk
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Disable dexpreopt for the whole product
WITH_DEXPREOPT := false
PRODUCT_NAME := lineage_gtelwifi
PRODUCT_DEVICE := gtelwifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

# Include vendor blobs
$(call inherit-product, vendor/samsung/gtelwifi/vendor.mk)

PRODUCT_PACKAGES += \
    libqdMetaData

PRODUCT_PACKAGES += \
    libqdutils
$(call inherit-product, device/samsung/gtelwifi/device.mk)

PRODUCT_NAME := lineage_gtelwifi
PRODUCT_DEVICE := gtelwifi
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-T560
PRODUCT_MANUFACTURER := Samsung

# Inherit some common carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p700/p700.mk)

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusL7

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p700
PRODUCT_NAME := carbon_p700
PRODUCT_BRAND := lge
PRODUCT_MODEL := p700
PRODUCT_MANUFACTURER := lge
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.p700.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=u0_open_eu \
    PRIVATE_BUILD_DESC="u0_open_eu-user 4.0.3 IML74K lgp700-V10a.20120418.144808 release-keys" \
    BUILD_FINGERPRINT="lge/u0_open_eu/u0:4.0.3/IML74K/lgp700-V10a.20120418.144808:user/release-keys"

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

# Enable Torch
#PRODUCT_PACKAGES += Torch

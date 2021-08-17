/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_lahaina.h>

static const variant_info_t haydn_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "Haydn",
    .marketname = "Mi11x Pro",
    .model = "Xiaomi Mi 11x Pro",
    .build_description = "Xiaomi Mi 11x Pro release-key",
    .build_fingerprint = "Redmi/haydn/haydn:11/RKQ1.201112.002/21.7.21:user/release-keys",

    .nfc = true,
};


static const std::vector<variant_info_t> variants = {
    haydn_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}

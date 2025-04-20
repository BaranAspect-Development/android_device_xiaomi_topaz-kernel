if [ -f "device/xiaomi/topaz-kernel/vendor_dlkm/qca_cld3_wlan.ko.xz" ]; then
	xz -d device/xiaomi/topaz-kernel/vendor_dlkm/qca_cld3_wlan.ko.xz
fi


FSGEN_BP="build/soong/fsgen/Android.bp"

# Check if patch is already applied
if ! grep -q 'enabled: false' "$FSGEN_BP"; then
    echo "Applying custom patch for fsgen..."
    sed -i '/soong_filesystem_creator {/a\    enabled: false,' "$FSGEN_BP"
    echo "Patch applied successfully"
else
    echo "Patch already applied. Skipping..."
fi

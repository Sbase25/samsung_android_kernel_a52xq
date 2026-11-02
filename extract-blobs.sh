#!/bin/bash
# Extract a52xq Samsung blobs from the phone. Phone in TWRP, USB connected, /vendor mounted
# (TWRP > Mount > Vendor). Run from the LineageOS source root.
set -e
cd device/samsung/a52xq
adb wait-for-recovery
adb shell "mount /vendor 2>/dev/null; ls /vendor/build.prop" || { echo "mount Vendor in TWRP first"; exit 1; }
./extract-files.py
echo "blobs extracted to vendor/samsung/a52xq"

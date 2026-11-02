# Overgrowth unofficial LineageOS for Galaxy A52 5G (a52xq / SM-A526B)

Build kit for a **device-specific** (non-GSI) LineageOS 23.2 build, based on the
[samsung-sm7225](https://github.com/samsung-sm7225) community trees plus the
Overgrowth kernel fixes.

Firmware required on the phone: **A526BXXSCGYC1** (blobs are extracted from it).

## What's in here

| Path | What |
|---|---|
| `local_manifests/a52xq.xml` | Adds device, common, vendor, kernel and hardware/samsung repos |
| `patches/kernel/` | Overgrowth kernel commits (seccomp codec2 fix, A17 build fixes, USB role fix) |
| `patches/device_a52xq/` | Device tree fix: rebase-kernel configs + `PROJECT_NAME=a52xq` (speaker amp) |
| `apply-overgrowth.sh` | Applies the patches after `repo sync` (safe to run again) |
| `extract-blobs.sh` | Pulls the a52xq Samsung blobs from the phone in TWRP |

## Build (Ubuntu / WSL2, ~400 GB free, 32 GB RAM recommended)

```bash
# 1. Source (reuse an existing lineage-23.2 tree if you have one)
mkdir -p ~/los && cd ~/los
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
git clone -b overgrowth-build https://github.com/Sbase25/samsung_android_kernel_a52xq.git ~/overgrowth-build
mkdir -p .repo/local_manifests
cp ~/overgrowth-build/local_manifests/a52xq.xml .repo/local_manifests/
repo sync -c -j8 --force-sync --no-clone-bundle --no-tags

# 2. Overgrowth patches
bash ~/overgrowth-build/apply-overgrowth.sh

# 3. Samsung blobs: phone in TWRP, USB connected, TWRP > Mount > Vendor
bash ~/overgrowth-build/extract-blobs.sh

# 4. Build
source build/envsetup.sh
breakfast a52xq
m bacon
```

The result is `out/target/product/a52xq/lineage-23.2-*-UNOFFICIAL-a52xq.zip`.

### Reusing a GSI build tree
If the tree was used for a GSI build before (TrebleDroid/MisterZtr patches), remove
`.repo/local_manifests/treble*` and reset everything first:
`repo sync -d --force-sync` (drops the GSI patches).

## Install

TWRP > Wipe > Format Data > `yes`, then Install the `lineage-*.zip`, then reboot.

## Status

Work in progress. The upstream device tree is marked partly copied from m23xq, so expect
things to fix after the first build. Encryption and fingerprint are expected to work better
than on GSIs because the device tree configures Samsung's keymaster/fingerprint HALs.

## Credits

samsung-sm7225 maintainers (Aflaungos, Atakan, Bush-cat, ata-kaner), LineageOS,
Simon1511 (A52 4G trees, used as reference for the 24.0 port), phhusson / TrebleDroid.

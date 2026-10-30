# touchGrassKernel — AOSP/LineageOS GSI support for the Galaxy A52 5G (a52xq / SM-A526B)

A patched Samsung SM7225 (lito) kernel that lets the **Galaxy A52 5G** boot
**generic AOSP/LineageOS GSIs** (Android 14 → 16 / LineageOS 21 → 23.2) on the
stock Samsung vendor partition.

Base: `samsung-sm7225/android_kernel_samsung_sm7225`, Linux 4.19.325.

## What this adds

GSIs assume a modern GKI kernel and clean AOSP vendor. On a 4.19 Samsung
vendor several things break. This kernel + the helper in this folder fix them:

| Problem | Symptom on a stock-vendor GSI | Fix | Where |
|---|---|---|---|
| Missing GSI kernel features | GSI won't mount system / no overlayfs / no BPF | enable overlayfs, EROFS, binderfs, BPF+JIT, cgroup-BPF, PSI, memcg | `arch/arm64/configs/vendor/samsung/touchgrass-gsi.config` |
| `/system` is **EROFS-only** in the stock boot fstab, but ext4 GSIs need an ext4 line | boot loops at first-stage-mount ("Failed to mount /system") | add an `ext4` fallback line for `/system` to the boot ramdisk `fstab.default` | `gsi/patch-boot-for-gsi.sh` |
| Samsung's Android-11 `samsung.software.media.c2` codec service uses a seccomp policy that predates syscalls in newer bionic (e.g. `rseq`) | service killed by seccomp every 5 s → mediaserver hangs → **storage never mounts, camera/ringtones/Settings→Storage crash** | for that one process, allow instead of kill the blocked syscall | `kernel/seccomp.c` |
| A52 speaker amp driver not compiled in | no sound, 40 s boot stall waiting for a sound card | build the techpack audio with the A52 config (TAS256x) | build with `PROJECT_NAME=a52xq` (see below) |

These fixes are **generic across GSIs** — they target the Samsung vendor /
kernel mismatch, not any one GSI build. Any arm64 **ext4** AOSP/LineageOS GSI
should boot.

## Build

```bash
export PROJECT_NAME=a52xq        # REQUIRED: selects the A52 techpack audio (TAS256x amp)
make -j$(nproc) O=out ARCH=arm64 CC=clang LLVM=1 LLVM_IAS=1 \
     vendor/lito-perf_defconfig \
     vendor/samsung/lito-sec-common.config \
     vendor/samsung/a52xq.config \
     vendor/samsung/touchgrass-gsi.config
make -j$(nproc) O=out ARCH=arm64 CC=clang LLVM=1 LLVM_IAS=1 Image.gz dtbs
```

Output: `out/arch/arm64/boot/Image.gz`.

Verify the two kernel-side fixes landed:
```bash
strings out/arch/arm64/boot/Image | grep "touchGrass: seccomp allow"   # codec fix
strings out/arch/arm64/boot/Image | grep "tas256x ASI1"                # A52 speaker amp
```

## Flash (per boot image)

The kernel goes into the **boot** partition; the ext4-fstab fallback is added
to the same boot image's ramdisk. Do it with magiskboot on-device (keeps the
stock ramdisk, dtb and Samsung signature):

1. Replace the kernel in the current boot image (`magiskboot unpack` →
   swap `kernel` → `magiskboot repack` → `dd` to `by-name/boot`).
2. Run `gsi/patch-boot-for-gsi.sh` to add the ext4 `/system` fallback line.

Then flash any arm64 **ext4** GSI to `system` via fastbootd
(`fastboot flash system <gsi>.img`), format data, and boot.

## Known-not-working

- **Fingerprint**: the A52 in-display optical sensor uses Samsung's
  proprietary `ISehBiometricsFingerprint@3.0` HAL; GSIs expect the AOSP
  `IBiometricsFingerprint@2.1`. The phh "broken fingerprint" workaround does
  not bridge it on this device. Unresolved.
- **Mobile data/VoLTE**: depends on the GSI's RIL handling (Samsung RIL). Try
  the phh Treble IMS/telephony options.

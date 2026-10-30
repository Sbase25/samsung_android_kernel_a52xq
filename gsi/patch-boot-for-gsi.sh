#!/system/bin/sh
# patch-boot-for-gsi.sh
# Adds an ext4 fallback mount line for /system to the boot ramdisk's
# fstab.default, so an ext4 AOSP/LineageOS GSI can mount on a stock Samsung
# vendor whose fstab only declares /system as EROFS.
#
# Run from a custom recovery (TWRP) adb shell AFTER flashing this kernel into
# boot. Needs a magiskboot binary. Idempotent: safe to run twice.
#
#   adb push magiskboot /tmp/magiskboot
#   adb push patch-boot-for-gsi.sh /tmp/
#   adb shell sh /tmp/patch-boot-for-gsi.sh
set -e

MB=/tmp/magiskboot
BOOT=/dev/block/by-name/boot
W=/tmp/gsi-fstab
command -v "$MB" >/dev/null 2>&1 || { [ -x "$MB" ] || { echo "magiskboot not found at $MB"; exit 1; }; }
chmod 755 "$MB" 2>/dev/null || true

rm -rf "$W"; mkdir -p "$W"; cd "$W"
dd if="$BOOT" of=boot.img bs=4M
cp boot.img boot-backup.img          # backup of the current boot image
"$MB" unpack boot.img
"$MB" cpio ramdisk.cpio "extract fstab.default fstab.orig"

if grep '^system' fstab.orig | grep -q 'ext4'; then
    echo "Already patched: an ext4 /system line is present. Nothing to do."
    exit 0
fi

# Build the new fstab: after the first "system ... erofs ..." line, insert an
# identical-target ext4 line. first_stage_mount tries them in order.
awk '
  { print }
  !done && $1=="system" && $3=="erofs" {
      print "system\t/system\text4\tro,barrier=1\twait,logical,first_stage_mount"
      done=1
  }
' fstab.orig > fstab.new

if ! grep '^system' fstab.new | grep -q 'ext4'; then
    echo "Could not find an 'system ... erofs' line to patch. Aborting, nothing flashed."
    exit 1
fi

"$MB" cpio ramdisk.cpio "add 0640 fstab.default fstab.new"
"$MB" cpio ramdisk.cpio "extract fstab.default fstab.check"
echo "--- new /system lines ---"
grep '^system' fstab.check
grep '^system' fstab.check | grep -q 'ext4' || { echo "patch not applied, nothing flashed"; exit 1; }

"$MB" repack boot.img new-boot.img
dd if=new-boot.img of="$BOOT" bs=4M
sync
echo "Done: ext4 /system fallback added to boot. Backup: $W/boot-backup.img"

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55334222:aa82397f3af6c10c0b6b76ac56a061b29931eadb; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50513226:8a78ae84b6e803c861fe824f945c19928fbf3a8f EMMC:/dev/block/bootdevice/by-name/recovery aa82397f3af6c10c0b6b76ac56a061b29931eadb 55334222 8a78ae84b6e803c861fe824f945c19928fbf3a8f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:52200782:e23f30f5a44465c2df7aa30b358ef0da2da1888c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:46155082:b2fbd2483ceff7cbf365436f3753b134c75c7e7f EMMC:/dev/block/bootdevice/by-name/recovery e23f30f5a44465c2df7aa30b358ef0da2da1888c 52200782 b2fbd2483ceff7cbf365436f3753b134c75c7e7f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56722766:02290bd99c5bd0b67f166e8c0216bebf8f711ccc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50775370:d8d2fb29d0624514ce9c6329ee836a0edd08fb06 EMMC:/dev/block/bootdevice/by-name/recovery 02290bd99c5bd0b67f166e8c0216bebf8f711ccc 56722766 d8d2fb29d0624514ce9c6329ee836a0edd08fb06:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

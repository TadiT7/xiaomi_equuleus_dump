#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50971982:0f49c947b1f4c41774bb281721d61ab0916cb0c4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:46081354:e29f25f57d182fce8bc4e293d611b0adce4f97d7 EMMC:/dev/block/bootdevice/by-name/recovery 0f49c947b1f4c41774bb281721d61ab0916cb0c4 50971982 e29f25f57d182fce8bc4e293d611b0adce4f97d7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

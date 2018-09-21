#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:50971982:906883a96c387e62e6f537a3f9c32c2f56e4db47; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:46077258:320cf7b0395413fa067154587a349e82011df21d EMMC:/dev/block/bootdevice/by-name/recovery 906883a96c387e62e6f537a3f9c32c2f56e4db47 50971982 320cf7b0395413fa067154587a349e82011df21d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

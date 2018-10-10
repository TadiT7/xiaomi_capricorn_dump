#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:28247374:f6455d9a541f66626c7da4b07318787b26c7b118; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24634698:9db9d1ab48944bc62c9efce2be47beea4f9e29ea EMMC:/dev/block/bootdevice/by-name/recovery f6455d9a541f66626c7da4b07318787b26c7b118 28247374 9db9d1ab48944bc62c9efce2be47beea4f9e29ea:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

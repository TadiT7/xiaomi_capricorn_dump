#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29402446:bc5e16a3c4f5f5df83061e0f7e051c9569f6b3c5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:24638794:065fab1ed62485850de679b61e032638052cabbc EMMC:/dev/block/bootdevice/by-name/recovery bc5e16a3c4f5f5df83061e0f7e051c9569f6b3c5 29402446 065fab1ed62485850de679b61e032638052cabbc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

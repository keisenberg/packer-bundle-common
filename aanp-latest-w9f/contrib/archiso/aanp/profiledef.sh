#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="aanp"
iso_label="AANP"
iso_publisher="Obfuscated"
iso_application="Arch Attended Node Provisioner"
iso_version="latest"
install_dir="aanp"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/etc/fwknop/access.conf"]="0:0:600"
  ["/etc/fwknop/fwknopd.conf"]="0:0:600"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.ssh"]="0:0:700"
  ["/root/.ssh/authorized_keys"]="0:0:600"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
)

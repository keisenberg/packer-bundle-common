## aanp-latest-w9f.auto.pkrvars.hcl :: Packer :: Variable definitions file :: aanp-latest-w9f

#
## Variable definition blocks

# Variable definition block :: aanp-latest-w9f
boot_wait         = "2s"
cpus              = "8"
disk_adapter_type = "scsi"
disk_size         = "128"
disk_type_id      = "0"
guest_os_type     = "other5xlinux-64"
headless          = true
http_bind_address = "192.168.73.1"
http_directory    = "contrib/http"
iso_checksum      = "545c090b6f2f74ae74f6e75af216e785ac6dd8087c14118722eb271b1ac5757c3e2f5d0b8e60c7317f8383ddee296161e49e62edf001ea88bcf30219480ad503"
iso_url           = "https://mirror.ams1.nl.leaseweb.net/archlinux/iso/2021.01.01/archlinux-2021.01.01-x86_64.iso"
memory            = "3072"
output_directory  = "output/{{ build_name }}"
shutdown_command  = "echo 'HashiCorp Packer' | sudo --stdin /usr/sbin/halt --halt --poweroff"
ssh_agent_auth    = true
ssh_timeout       = "5m"
ssh_username      = "root"
vm_name           = "{{ build_name }}"
vmdk_name         = "{{ build_name }}"

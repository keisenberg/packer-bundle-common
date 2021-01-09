## sources.vmware-iso.pkr.hcl :: Packer :: Source block :: vmware-iso

#
## Source blocks

# Source block :: vmware-iso :: centos-8-stream-b6g-bios
source "vmware-iso" "centos-8-stream-b6g-bios" {
    boot_command      = [ "<tab><bs><bs><bs><bs><bs>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/kickstart/{{ build_name }}.cfg inst.noninteractive inst.nosave=all inst.text<enter><wait>" ]
    boot_wait         = var.boot_wait
    cpus              = var.cpus
    disk_adapter_type = var.disk_adapter_type
    disk_size         = var.disk_size
    disk_type_id      = var.disk_type_id
    guest_os_type     = var.guest_os_type
    headless          = var.headless
    http_bind_address = var.http_bind_address
    http_directory    = var.http_directory
    iso_checksum      = var.iso_checksum
    iso_url           = var.iso_url
    memory            = var.memory
    output_directory  = var.output_directory
    shutdown_command  = var.shutdown_command
    ssh_agent_auth    = var.ssh_agent_auth
    ssh_timeout       = var.ssh_timeout
    ssh_username      = var.ssh_username
    vm_name           = var.vm_name
    vmdk_name         = var.vmdk_name
    vmx_data          = { "firmware": "bios" }
}

# Source block :: vmware-iso :: centos-8-stream-b6g-efi
source "vmware-iso" "centos-8-stream-b6g-efi" {
    boot_command      = [ "e<down><down><end><bs><bs><bs><bs><bs>inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/kickstart/{{ build_name }}.cfg inst.noninteractive inst.nosave=all inst.text<leftCtrlOn>x<leftCtrlOff>" ]
    boot_wait         = var.boot_wait
    cpus              = var.cpus
    disk_adapter_type = var.disk_adapter_type
    disk_size         = var.disk_size
    disk_type_id      = var.disk_type_id
    guest_os_type     = var.guest_os_type
    headless          = var.headless
    http_bind_address = var.http_bind_address
    http_directory    = var.http_directory
    iso_checksum      = var.iso_checksum
    iso_url           = var.iso_url
    memory            = var.memory
    output_directory  = var.output_directory
    shutdown_command  = var.shutdown_command
    ssh_agent_auth    = var.ssh_agent_auth
    ssh_timeout       = var.ssh_timeout
    ssh_username      = var.ssh_username
    vm_name           = var.vm_name
    vmdk_name         = var.vmdk_name
    vmx_data          = { "firmware": "efi" }
}

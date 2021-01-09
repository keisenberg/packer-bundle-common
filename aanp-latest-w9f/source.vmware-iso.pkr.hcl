## sources.vmware-iso.pkr.hcl :: Packer :: Source block :: vmware-iso

#
## Source blocks

# Source block :: vmware-iso :: aanp-latest-w9f-efi
source "vmware-iso" "aanp-latest-w9f-efi" {
    boot_command      = [ "e<end><spacebar>copytoram_size=100% cow_spacesize=3072M script=http://{{ .HTTPIP }}:{{ .HTTPPort }}/automated_script/aanp-latest-w9f-efi url_base=http://{{ .HTTPIP }}:{{ .HTTPPort }}<enter><wait>" ]
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

## centos-8-stream-b6g.auto.pkrvars.hcl :: Packer :: Variable definitions file :: centos-8-stream-b6g

#
## Variable definition blocks

# Variable definition block :: centos-8-stream-b6g
boot_wait         = "2s"
cpus              = "1"
disk_adapter_type = "scsi"
disk_size         = "5120"
disk_type_id      = "0"
guest_os_type     = "centos8-64"
headless          = true
http_bind_address = "192.168.73.1"
http_directory    = "contrib/http"
iso_checksum      = "16871ad128e9c378a01883a316c9c0c2e21146996648e8fdfbe9fea926ea3880454fb196ebc70f340c2d293f14a5bfa5e6c73b35710e1f3ed5816bd52ba3dd09"
iso_url           = "https://mirror.ams1.nl.leaseweb.net/centos/8-stream/isos/x86_64/CentOS-Stream-8-x86_64-20201203-boot.iso"
memory            = "1024"
output_directory  = "output/{{ build_name }}"
shutdown_command  = "echo 'HashiCorp Packer' | sudo --stdin /sbin/halt --halt --poweroff"
ssh_agent_auth    = true
ssh_timeout       = "20m"
ssh_username      = "obfuscated"
vm_name           = "{{ build_name }}"
vmdk_name         = "{{ build_name }}"

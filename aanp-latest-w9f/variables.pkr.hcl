## variables.pkr.hcl :: Packer :: Variable block

#
## Variable blocks

# Variable block :: Common
variable "boot_wait" { type = string }
variable "cpus" { type = string }
variable "disk_adapter_type" { type = string }
variable "disk_size" { type = string }
variable "disk_type_id" { type = string }
variable "guest_os_type" { type = string }
variable "headless" { type = bool }
variable "http_bind_address" { type = string }
variable "http_directory" { type = string }
variable "iso_checksum" { type = string }
variable "iso_url" { type = string }
variable "memory" { type = string }
variable "output_directory" { type = string }
variable "shutdown_command" { type = string }
variable "ssh_agent_auth" { type = bool }
variable "ssh_timeout" { type = string }
variable "ssh_username" { type = string }
variable "vm_name" { type = string }
variable "vmdk_name" { type = string }

## build.pkr.hcl :: Packer :: Build block

#
## Build blocks

# Build block :: centos-8-stream-b6g-*
build {
    # Array of string with references to pre-defined sources
    sources = [
        "source.vmware-iso.aanp-latest-w9f-efi"
    ]

    # Provisioners use builtin and third-party software to install and configure the machine image after booting. Provisioners prepare the system for use
    provisioner "shell" {
        # Array of commands to execute
        inline = [ "/root/provisioner_validate" ]
    }

    # Post-processors run after the image is built by the builder and provisioned by the provisioner(s). Post-processors are optional, and they can be used to upload artifacts, re-package, or more
    post-processor "shell-local" {
        # Array of commands to execute
        inline = [ "rm -f -r -v output/{{ build_name }}" ]
    }
}

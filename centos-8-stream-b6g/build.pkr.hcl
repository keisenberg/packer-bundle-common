## build.pkr.hcl :: Packer :: Build block

#
## Build blocks

# Build block :: centos-8-stream-b6g-*
build {
    # Array of string with references to pre-defined sources
    sources = [
        "source.vmware-iso.centos-8-stream-b6g-bios",
        "source.vmware-iso.centos-8-stream-b6g-efi"
    ]

    # Provisioners use builtin and third-party software to install and configure the machine image after booting. Provisioners prepare the system for use
    provisioner "shell" {
        # Array of commands to execute
        inline = [ "sudo firewall-cmd --permanent --remove-service=ssh --zone=public" ]
        # The folder where the uploaded script will reside on the machine, this defaults to '/tmp'
        remote_folder = "/home/obfuscated"
    }

    # Post-processors run after the image is built by the builder and provisioned by the provisioner(s). Post-processors are optional, and they can be used to upload artifacts, re-package, or more
    post-processor "shell-local" {
        # Array of commands to execute
        inline = [
            "qemu-img convert -f vmdk output/{{ build_name }}/{{ build_name }}.vmdk -O raw output/{{ build_name }}.img",
            "rm -f -r -v output/{{ build_name }}",
            "lz4 --best --force --quiet --quiet --rm output/{{ build_name }}.img output/{{ build_name }}.img.lz4",
            "rm -f -r -v output/{{ build_name }}.img",
            "gpg --armor --batch --passphrase \"$(pass show svc.vps.domain.tld/provision/image/gpg-passphrase)\" --symmetric --yes output/{{ build_name }}.img.lz4",
            "rm -f -r -v output/{{ build_name }}.img.lz4",
            "sftp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null obfuscated@service.domain.tld <<< $'rm image-vps-c2b/centos-8-stream-b6g-{{ build_name }}.img.lz4.asc'",
            "scp -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null output/{{ build_name }}.img.lz4.asc obfuscated@service.domain.tld:image-vps-c2b/ &>/dev/null || true",
            "rm -f -r -v output/{{ build_name }}.img.lz4.asc"
        ]
    }
}

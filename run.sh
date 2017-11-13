#!/bin/bash

qemu-system-x86_64 -enable-kvm -m 1G -drive file=sr6.img,if=virtio,format=raw -net nic -net user,hostname=sr6vm,hostfwd=tcp::2222-:22 -monitor stdio -smp 2 -name "SR6 VM" -kernel shared/net-next/arch/x86/boot/bzImage -append 'root=/dev/vda1 console=ttyS0,115200' -initrd initramfs-linux.img -fsdev local,security_model=passthrough,id=fsdev0,path=/home/math/Thesis/VM/shared -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=shared

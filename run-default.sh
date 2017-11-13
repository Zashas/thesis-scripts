#!/bin/bash

qemu-system-x86_64 -enable-kvm -m 1G -hda sr6.img -net nic -net user,hostname=sr6vm,hostfwd=tcp::2222-:22 -monitor stdio -smp 4 -name "SR6 VM" -fsdev local,security_model=passthrough,id=fsdev0,path=/home/math/Thesis/VM/shared -device virtio-9p-pci,id=fs0,fsdev=fsdev0,mount_tag=shared

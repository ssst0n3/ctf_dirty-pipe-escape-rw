#!/bin/bash
set -ex
# wget https://mirrors.edge.kernel.org/pub/linux/kernel/v5.x/linux-5.15.34.tar.xz
# tar -xvf linux-5.15.34.tar.xz
# cd linux-5.15.34

git clone --branch Ubuntu-5.15.0-25.25 --depth=1 https://git.launchpad.net/~ubuntu-kernel/ubuntu/+source/linux/+git/jammy
cd jammy
sed -i "s/buf->flags = 0;//g" lib/iov_iter.c
# make ARCH=x86 defconfig
cp /config .config
# ./scripts/config --disable SYSTEM_TRUSTED_KEYS
# ./scripts/config --disable SYSTEM_REVOCATION_KEYS
# ./scripts/config --disable CONFIG_DEBUG_INFO_BTF
nice make -j`nproc` bindeb-pkg

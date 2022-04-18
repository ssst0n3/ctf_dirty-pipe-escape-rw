FROM ubuntu
RUN apt-get update && \
    # apt-get install -y build-essential kernel-package fakeroot libncurses5-dev libssl-dev ccache bison flex libelf-dev dwarves && \
    apt-get install -y libncurses-dev gawk flex bison openssl libssl-dev dkms libelf-dev libudev-dev libpci-dev libiberty-dev autoconf && \
    apt-get install -y bc rsync cpio zstd && \
    # apt-get install -y build-essential linux-source bc kmod cpio flex libncurses5-dev libelf-dev libssl-dev dwarves && \
    # apt-get install -y bison rsync && \ 
    apt-get install -y git wget
COPY _build.sh /build.sh
COPY config-5.15.0-25-generic /config
RUN chmod +x /build.sh

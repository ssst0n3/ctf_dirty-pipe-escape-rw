#!/bin/bash
set -ex

build() {
    dockerfile=$1
    tag=$2
    if [ $(docker image ls $tag | wc -l) -eq 1 ];
    then docker build -f $dockerfile -t $tag .;
    fi
}
build Dockerfile.step0 ubuntu-22.04-20220414-step0-init
build Dockerfile.step1 ubuntu-22.04-20220414-step1-kernel
build Dockerfile.step2 ubuntu-22.04-20220414-step2-containerd
build Dockerfile.step3 ubuntu-22.04-20220414-step3-k8s
build Dockerfile.step4 ubuntu-22.04-20220414-step4-deployment
build Dockerfile.step5 ubuntu-22.04-20220414-step5-secret
build Dockerfile.final ctf_dirty-pipe-escape-rw
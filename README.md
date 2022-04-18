# diryt-pipe escape rw

Get in the container by sshpass -p user ssh -p30000 user@host, and escape to the host to read /flag.

There's a local debug vm for you: https://ctf-challenges.obs.cn-south-1.myhuaweicloud.com/2022/hwctf_month-Qualifier-202204/container/dirty-pipe-escape-rw/ctf_dirty-pipe-escape-rw_debug_202204181408.shrunk.qcow2

You can start it using commands below. And the root's password is root.
```
qemu-system-x86_64 \
-m 1024 \
-hda ubuntu-server-cloudimg.img \
-smp 2 \
-m 2048M \
-nographic \
-enable-kvm
```

If you have met "network is unreachable" problem, this script can help

```
touch /etc/cloud/cloud-init.disabled
cloud-init clean
reboot
```

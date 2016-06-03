#!/bin/bash
mkdir /mnt/backups
sudo fdisk /dev/sdb
o
n
p
1
w
sudo mkfs.ext4 /dev/sdb1
blkid /dev/sdb1
nano /etc/fstab
UUID	/mnt/backups   ext4    defaults    0    1
mount -a
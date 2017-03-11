#!/bin/bash
dd if=/dev/zero of=/root/.volume/$1.img bs=1M count=$2
mkfs.ext3 /root/.volume/$1.img
mount -o loop /root/.volume/$1.img /mnt/var/www/storage/codes/$1

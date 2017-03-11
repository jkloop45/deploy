#!/bin/bash
mkfs.ext3 /root/.volume/temp.img
mount -o loop /root/.volume/$1.img /mnt/var/www/storage/codes/$1

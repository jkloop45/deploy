bash -c "rm -rf /mnt/var/www/storage/codes/$1/$2 || rm -f /mnt/etc/nginx/conf.d/$1/$2 || rm -f /mnt/etc/nginx/conf.d/$1/$2.* && docker rm -f $3"

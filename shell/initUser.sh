bash -c "mkdir /mnt/var/www/storage/codes/$1 && mkdir /mnt/var/www/storage/codes/$1/.ssh && mkdir  /mnt/etc/nginx/conf.d/$1 && ssh-keygen -t rsa -P \"\" -f /mnt/var/www/storage/codes/$1/.ssh/id_rsa"

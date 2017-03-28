bash -c "rm -rf /mnt/var/www/storage/codes/$1/$2 && rm -f /etc/nginx/conf.d/$1/$2.gospely.com.conf && && rm -f /etc/nginx/conf.d/$2.gospely.com.conf && docker rm -f $3"

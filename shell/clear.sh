bash -c "rm -rf /var/www/storage/codes/$1/$2 && rm -f /etc/nginx/conf.d/$2.gospely.com.conf && docker rm -rf $3"

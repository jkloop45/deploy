docker pull registry.cn-hangzhou.aliyuncs.com/gospel/ubuntu
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-ubuntu
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/mariadb


docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nginx
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nginx-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx-mariadb

docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nginx-php
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx-php
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nginx-php-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx-php-mariadb

docker pull registry.cn-hangzhou.aliyuncs.com/gospel/wordpress
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/wordpress-mariadb

docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:latest
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:4.4.4
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:latest
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:4.4.4
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:latest
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:4.4.4



#images rename
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/ubuntu gospel-ubuntu:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-ubuntu gospel-debug-ubuntu:latest

docker tag registry.cn-hangzhou.aliyuncs.com/gospel/mariadb gospel-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-mariadb gospel-debug-mariadb:latest

docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nginx gospel-nginx:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx gospel-debug-nginx:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nginx-mariadb gospel-nginx-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx-mariadb gospel-debug-nginx-mariadb:latest


docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nginx-php gospel-nginx-php:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx-php gospel-debug-nginx-php:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nginx-php-mariadb gospel-nginx-php-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nginx-php-mariadb gospel-debug-nginx-php-mariadb:latest

docker tag registry.cn-hangzhou.aliyuncs.com/gospel/wordpress gospel-wordpress:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/wordpress-mariadb gospel-wordpress-mariadb:latest

docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:latest gospel-nodejs:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:4.4.4 gospel-nodejs:4.4.4
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:latest gospel-debug-nodejs:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:4.4.4 gospel-debug-nodejs:4.4.4
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:latest gospel-nodejs-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:4.4.4 gospel-nodejs-mariadb:4.4.4

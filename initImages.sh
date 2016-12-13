docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-ubuntu
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-debug-ubuntu
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-debug-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-mariadb

docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-debug-postgres
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-postgres

docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx-php
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-php
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-wordpress
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs4.4.4:4.4.4

#images rename
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-ubuntu gospel-ubuntu:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-debug-ubuntu gospel-debug-ubuntu:latest

docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-mariadb gospel-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-debug-mariadb gospel-debug-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-postgres gospel-postgres:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-debug-postgres gospel-debug-postgres:latest

docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx gospel-nginx:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx-php gospel-nginx-php:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-php gospel-php:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-wordpress gospel-wordpress:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs gospel-nodejs:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs4.4.4:4.4.4 gospel-nodejs:4.4.4

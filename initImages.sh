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
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/discuz
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/discuz-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/phpwind
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/phpwind-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/laravel
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/laravel-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/thinkphp
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/thinkphp-mariadb

docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:latest
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:4.4.4
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:latest
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:4.4.4
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:latest
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:4.4.4

docker pull registry.cn-hangzhou.aliyuncs.com/gospel/vue:1
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/vue:2
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/react
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/angular:1
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/angular:2
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/koa:1
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/koa:2
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/express
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/bootstrap
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/bootstrap:4

docker pull registry.cn-hangzhou.aliyuncs.com/gospel/koa-mariadb:1
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/koa-mariadb:2
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/express-mariadb
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/koa-mongodb:1
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/koa-mongodb:2
docker pull registry.cn-hangzhou.aliyuncs.com/gospel/express-mongodb






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
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/discuz gospel-discuz:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/discuz-mariadb gospel-discuz-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/phpwind gospel-phpwind:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/phpwind-mariadb gospel-phpwind-mariadb:latest

docker tag registry.cn-hangzhou.aliyuncs.com/gospel/laravel gospel-laravel:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/laravel-mariadb gospel-laravel-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/thinkphp gospel-thinkphp:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/thinkphp-mariadb gospel-thinkphp-mariadb:latest


docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:latest gospel-nodejs:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/nodejs:4.4.4 gospel-nodejs:4.4.4
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:latest gospel-debug-nodejs:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs:4.4.4 gospel-debug-nodejs:4.4.4
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:latest gospel-nodejs-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/debug-nodejs-mariadb:4.4.4 gospel-nodejs-mariadb:4.4.4
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/vue:1 gospel-vue:1
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/vue:2 gospel-vue:2
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/react gospel-react:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/angular:1 gospel-angular:1
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/angular:2 gospel-angular:2
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/bootstrap gospel-bootstrap:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/bootstrap:4 gospel-bootstrap:4


docker tag registry.cn-hangzhou.aliyuncs.com/gospel/koa:1 gospel-koa:1
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/koa:2 gospel-koa:2
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/koa-mariadb:1 gospel-koa-mariadb:1
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/koa-mariadb:2 gospel-koa-mariadb:2
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/koa-mongodb:1 gospel-koa-mongodb:1
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/koa-mongodb:2 gospel-koa-mongodb:2


docker tag registry.cn-hangzhou.aliyuncs.com/gospel/express gospel-express
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/express-mariadb gospel-express-mariadb:latest
docker tag registry.cn-hangzhou.aliyuncs.com/gospel/express-mongodb gospel-express-mongodb:latest


docker rmi $(docker images |awk '/^registry-cn*/ { print $3}')

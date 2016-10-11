FROM php:5.6-apache

MAINTAINER Sharkseven 'shark@dodora.cn'

#clone code

RUN git clone https://github.com/Gospely/payment.git /var/www/payment
# 对外暴露8088端口
EXPOSE     8088

# 设置容器默认工作目录为/var/www
WORKDIR    /var/www/payment

# 容器运行后默认执行的指令
ENTRYPOINT ["php", "-S", "0.0.0.0:8088"]

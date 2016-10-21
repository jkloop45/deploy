FROM node:4

MAINTAINER ivy 'xieyang@dodora.cn'

RUN apt-get update
RUN apt-get install git -y

#use cnpm
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

#clone code
RUN git clone https://github.com/Gospely/api /var/www/api
RUN cd /var/www/api && cnpm install
RUN cnpm install -g supervisor
RUN echo '/n'

ENTRYPOINT cd /var/www/api && git pull && cnpm install && supervisor --harmony index.js && /bin/bash && ssh keygen -t rsa -f /var/temp

FROM node:4.6

MAINTAINER ivy 'xieyang@dodora.cn'

RUN apt-get update
RUN apt-get install git -y
RUN apt-get install openssh-server -y
RUN apt-get install zip -y

#use uglifyjs
RUN npm -g install js-beautify

#use cnpm
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

#clone code
RUN git clone https://github.com/Gospely/api /var/www/api
RUN cd /var/www/api && cnpm install
RUN cnpm install -g pm2
# 修改时区
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENTRYPOINT cd /var/www/api && git pull && cnpm install && npm start && /bin/bash && service ssh start

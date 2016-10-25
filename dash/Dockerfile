FROM nginx

MAINTAINER ivy 'xieyang@dodora.cn'

RUN apt-get update
RUN apt-get install git -y

#clone code
RUN rm -rf /usr/share/nginx/html
RUN git clone https://github.com/Gospely/dist.dash /usr/share/nginx/html

ENTRYPOINT cd /usr/share/nginx/html && git pull && nginx && /bin/bash

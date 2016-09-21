FROM node

MAINTAINER ivy 'xieyang@dodora.cn'

RUN apt-get update
RUN apt-get install git -y

#install nvm
#RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
#RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

#use cnpm
#RUN nvm install v4.2.2
#RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

#clone code
RUN git clone https://github.com/Gospely/dash /var/www/dash
RUN cd /var/www/dash

ENTRYPOINT cd /var/www/dash && /bin/bash

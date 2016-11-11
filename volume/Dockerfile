FROM node

MAINTAINER sharkseven 'shark@dodora.cn'

RUN apt-get update
RUN apt-get install git -y

#install nvm
#RUN wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
#RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


#clone code
COPY FileManager/ /var/www/file


ENTRYPOINT cd /var/www/file && git pull && npm start && /bin/bash

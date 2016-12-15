#install docker
sudo yum update -y

sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

#配置docker rest api
sudo tee /etc/systemd/system/docker.service <<- 'EOF'
[Service]
ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock
EOF

sudo yum install docker-engine -y
sudo systemctl enable docker.service
sudo systemctl start docker
curl -sSL https://get.daocloud.io/daotools/set_mirror.sh | sh -s http://f6dfceb5.m.daocloud.io Copy
sudo systemctl restart docker

#install xfs_growfs to extend devicemapper
sudo yum install xfsprogs.x86_64 --assumeyes

#install nginx
sudo yum install nginx -y
service nginx start

#install git
sudo yum install git -y
sudo yum install nodejs -y

#install node
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

nvm install v6
npm install -g cnpm --registry=https://registry.npm.taobao.org

#clone index
git clone https://github.com/Gospely/index /var/www/gospely/index

#clone socket
git clone https://github.com/Gospely/terminal-socket /var/www/gospely/socket
cd /var/www/gospely/socket && npm install

#config nginx
#modify the default workspace of nginx
sed -i 's:usr/share/nginx/html:var/www/gospely/index:g' /etc/nginx/nginx.conf

service nginx restart

git clone https://github.com/Gospely/deploy ~/gospely/deploy
git clone https://github.com/Gospely/allocate.git ~/gospely/allocate

cd ~/gospely/allocate
npm install

#pull数据库镜像
docker pull mariadb
docker pull tutum/mongodb
docker pull postgres
docker pull redis

docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-ubuntu
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx-php
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-php
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-wordpress
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs
docker pull registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs4.4.4:4.4.4

#images rename
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-ubuntu gospel-ubuntu:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx gospel-nginx:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nginx-php gospel-nginx-php:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-php gospel-php:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-wordpress gospel-wordpress:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs gospel-nodejs:latest
docker tag registry.cn-hangzhou.aliyuncs.com/sharkseven/gospel-nodejs4.4.4:4.4.4 gospel-nodejs:4.4.4

#创建数据库 redis
docker run --name gospel-postgres -p 5432:5432 -v /data/postgres/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=dodoraCN2016@gospely -d postgres
docker run --name gospel-redis -d redis

#创建存储文件夹

mkdir /var/www/storage
mkdir /var/www/storage/codes
mkdir /var/www/storage/profiles

#设置脚本运行权限
chmod 777 /root/gospely/deploy/shell

#创建phpmyadmin
docker run --name myadmin -d -e PMA_ARBITRARY=1 -p 8081:80 phpmyadmin/phpmyadmin

# build 镜像

git clone https://github.com/Gospely/docker.git ~/gospely/docker

sh ~/gospely/docker/build.sh

# clone wordpress

git clone https://github.com/WordPress/WordPress.git ~/gospely/applications/wordpress



#依次构建
sh ~/gospely/deploy/admin/deploy.sh
sh ~/gospely/deploy/api/deploy.sh
sh ~/gospely/deploy/dash/deploy.sh

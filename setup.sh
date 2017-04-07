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
# nginx源
sudo tee /etc/yum.repos.d/nginx.repo <<-'EOF'
[nginx]
name=nginx repo
baseurl=http://nginx.org/packages/centos/7/$basearch/
gpgcheck=0
enabled=1
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
sudo yum install wget -y
yum install gcc -y
sudo yum install unzip -y
#install nginx
sudo yum install nginx -y
sudo yum -y install lsof
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
npm install -g pm2

wget http://www.rarlab.com/rar/rarlinux-x64-5.3.0.tar.gz
tar -xzvf rarlinux-x64-5.3.0.tar.gz
mv rar /usr/local
ln -s /usr/local/rar/rar /usr/local/bin/rar
ln -s /usr/local/rar/unrar /usr/local/bin/unrar
#clone index
git clone https://github.com/Gospely/index /var/www/gospely/index
#cone webhhok
git clone https://github.com/Gospely/webhook /var/www/gospely/webhook

#config nginx
#modify the default workspace of nginx
sed -i 's:usr/share/nginx/html:var/www/gospely/index:g' /etc/nginx/nginx.conf

mkdir -p /mnt/etc/nginx/conf.d
cp -f /root/gospely/deploy/conf/nginx.conf /etc/nginx/

service nginx restart

sh /root/gospely/deploy/docker_resize.sh

git clone https://github.com/Gospely/deploy ~/gospely/deploy
git clone https://github.com/Gospely/allocate.git ~/gospely/allocate

cd ~/gospely/allocate
npm install

#pull数据库镜像
docker pull mariadb
docker pull tutum/mongodb
docker pull postgres


#创建存储文件夹

mkdir /mnt/var/www/storage
mkdir /mnt/var/www/storage/codes
mkdir /mnt/var/www/storage/profiles
mkdir /mnt/data

#获取数据库备份
bash -c 'cd /mnt/data && git clone --depth=1 https://git.oschina.net/sharkseven/pg.git /mnt/data/ && tar -xzvf postgres.tar.gz'

#创建数据库 redis
docker run --name gospel-postgres -v /mnt/data/postgres/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=dodoraCN2016@gospely -d postgres


# 创建稀疏文件模板
#mkdir /root/.volume
#dd if=/dev/zero of=/root/.volume/temp.img bs=10M count=2014

#设置脚本运行权限
chmod 777 /root/gospely/deploy/shell
#修改文件监听配置
sysctl -w fs.inotify.max_user_watches="99999999999"


sh ~/gospely/deploy/security.sh
sh ~/gospely/deploy/portsentry.sh

# 部署api
#依次构建
rm -rf ~/.ssh/id_rsa
docker pull registry.cn-hangzhou.aliyuncs.com/office/api
docker tag registry.cn-hangzhou.aliyuncs.com/office/api gospel_api
docker run -itd -p 9999:8089 -v /mnt/var/www/storage:/var/www/storage -w /var/www/api -v /mnt/var/www/ssh:/root/.ssh -v /mnt/var/www/storage/codes/temp:/var/www/api/uploads --name="gospel_api" --link gospel-postgres:gospely.com gospel_api
docker exec gospel_api ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa
cat /mnt/var/www/ssh/id_rsa.pub >> /root/.ssh/authorized_keys

#设置开机自动执行脚本

echo /etc/rc.d/rc.local >> sh ~/gospely/deploy/auto_setup.sh

# 设置定时任务
crontab /root/gospely/deploy/schedules.cron

#依次构建
sh ~/gospely/deploy/admin/deploy.sh
#sh ~/gospely/deploy/api/deploy.sh
sh ~/gospely/deploy/dash/deploy.sh

#官方镜像
sh ~/gospely/deploy/initImages.sh

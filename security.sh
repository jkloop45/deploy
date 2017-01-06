#!/bin/bash

wget http://sourceforge.net/projects/denyhosts/files/denyhosts/2.6/DenyHosts-2.6.tar.gz
#下载软件

tar -zxvf DenyHosts-2.6.tar.gz
#解压

mv DenyHosts-2.6 denyhost
#为了方便改个名

cd denyhost/
#进入目录

yum install python -y
#安装python

python setup.py install
#安装denyhost,脚本

cd /usr/share/denyhosts/
#进入配置目录

cp daemon-control-dist daemon-control
#为了方便改变配置文件名称

cp denyhosts.cfg-dist denyhosts.cfg
#修改服务文件名称

chown root daemon-control
chmod 700 daemon-control
#提高安全级别，修改权限

ln -s /usr/share/denyhosts/daemon-control /etc/init.d/denyhosts
#创建启动服务连接

chkconfig denyhosts on
#添加启动项

cp denyhosts.cfg denyhosts.cfg.bak
#备份配置文件，为修改配置做准备

cat /root/gospely/deploy/denyhost.txt &gt; /usr/share/denyhosts/denyhosts.cfg
#将配置文件内容导入配置文件（我的配置文件安装之前已经配置好了！）

/etc/init.d/denyhosts start
#启动服务

echo install succeed!

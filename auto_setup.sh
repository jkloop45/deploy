#启动暴露破解防护,启动端口探测防护
/usr/local/psionic/portsentry/portsentry -atcp
rm -f /var/lock/subsys/denyhosts
/etc/init.d/denyhosts start
# 监听数量设置
sysctl -w fs.inotify.max_user_watches="99999999999"
#启动webhook
pm2 start /var/www/gospely/webhook/index.js
service nginx start
# service docker start

# service xinetd start
# 启动数据卷容器
docker start $( docker ps -a | grep 'docker-volume-' | awk '{print $1}')
docker start gospel-postgres
docker start gospel_api
docker start gospel_ide
docker start gospel_dash
docker start gospel_project_gospelblog_ivy
docker start gospel_project_gospelbbs_ivy
#docker start $(docker ps -a -q)
 docker start $(docker ps -a | grep 'wordpress' | awk '{print $1}')
 docker start $(docker ps -a | grep 'phpwind' | awk '{print $1}')
 docker start $(docker ps -a | grep 'discuz' | awk '{print $1}')
 docker start $(docker ps -a | grep 'weiqing' | awk '{print $1}')

sh /mnt/static/vd/rsync.sh

#启动暴露破解防护,启动端口探测防护
/usr/local/psionic/portsentry/portsentry -atcp
rm -f /var/lock/subsys/denyhosts
/etc/init.d/denyhosts start
#启动webhook
pm2 start /var/www/gospely/webhook/index.js
service nginx start
service docker start
# 启动数据卷容器
docker start $( docker ps -a | grep 'docker-volume-' | awk '{print $1}')
docker start gospel-postgres
docker start gospel_api
docker start gospel_ide
docker start gospel_dash

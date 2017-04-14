docker exec $1 bash -c ". /root/.nvm/nvm.sh && cd /root/.gospely/.socket/demo && kill -9 $(netstat -tlnp | grep 3000 |awk '{print $7}' | awk -F '/' '{print $1}') && node app.js"

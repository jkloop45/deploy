docker stop gospel_api && docker rm gospel_api
docker build -t gospel_api .
docker run -itd -p 9999:8089 -v /var/www/storage:/var/www/storage -w /var/www/api -v /var/www/ssh:/root/.ssh -v /var/www/storage/codes/temp:/var/www/api/uploads --name="gospel_api" --link gospel-redis:redis  gospel_api

cat /var/www/ssh/id_rsa.pub >> /root/.ssh/authorized_keys

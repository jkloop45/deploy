docker stop gospel_api && docker rm gospel_api
docker build -t gospel_api .
docker run -itd -p 9999:8089 -v /mnt/var/www/storage:/var/www/storage -w /var/www/api -v /mnt/var/www/ssh:/root/.ssh -v /mnt/var/www/storage/codes/temp:/var/www/api/uploads --name="gospel_api" --link gospel-redis:redis --link gospel-postgres:gospely.com gospel_api
docker exec gospel_api ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa
cat /mnt/var/www/ssh/id_rsa.pub >> /root/.ssh/authorized_keys

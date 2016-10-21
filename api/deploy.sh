docker stop gospel_test && docker rm gospel_test
docker build -t gospel_test .
docker run -itd -p 9999:8089 -w /var/www/api -v /var/www/ssh:/var/temp  --name="gospel_test" --link gospel-redis:redis  gospel_test

cat /var/www/ssh/id_rsa.pub >> /root/.ssh/authorized_keys

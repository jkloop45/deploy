docker stop gospel_api && docker rm gospel_api
docker build -t gospel_api .
docker run -itd -p 9999:8089 -w /var/www/api --name="gospel_api" --link gospel-redis:redis  gospel_api

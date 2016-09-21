docker stop gospel_api && docker rm gospel_api
docker build -t gospel_api .
docker run -itd -p 9999:8088 -w /var/www/api --name="gospel_api" gospel_api

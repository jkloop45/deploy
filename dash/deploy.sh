docker stop gospel_dash && docker rm gospel_dash
docker build -t gospel_dash .
docker run -itd -p 9998:8088 -w /var/www/dash --name="gospel_dash" gospel_dash

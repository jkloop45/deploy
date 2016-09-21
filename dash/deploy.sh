docker stop gospel_dash && docker rm gospel_dash
docker build -t ivydom/gospel_dash .
docker run -itd -p 8089:8088 -w /var/www/dash --name="gospel_dash" ivydom/gospel_dash

docker stop gospel_dash && docker rm gospel_dash
docker build -t gospel_dash .
docker run -itd -p 9998:80 -w /usr/share/nginx/html --name="gospel_dash" gospel_dash

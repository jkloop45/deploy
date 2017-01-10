docker stop gospel_ide && docker rm gospel_ide
docker build -t gospel_ide .
docker run -itd -p 9996:80 -w /usr/share/nginx/html --name="gospel_ide" gospel_ide

docker stop gospel_ide && docker rm gospel_ide
docker build -t gospel_ide .
docker run -itd -p 9995:8080 -w /var/www/ide --name="gospel_ide" gospel_ide

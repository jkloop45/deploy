docker stop gospel_admin && docker rm gospel_admin
docker build -t gospel_admin .
docker run --name gospel_admin -itd -p 9997:80 gospel_admin

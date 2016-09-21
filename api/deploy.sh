docker build -t gospel_api .
docker run -itd -p 9999:8088 --name="gospel_api" gospel_api

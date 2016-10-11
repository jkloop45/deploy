docker stop gospel_payment && docker rm gospel_payment
docker build -t gospel_payment .
docker run -itd -p 9998:8088 -w /var/www/payment --name="gospel_dash" gospel_dash

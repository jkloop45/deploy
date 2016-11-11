docker run -d -v /var/www/storage/ --name=volumes-docker ubuntu
docker run --volumes-from volumes-docker -v /var/www/backup/:/backup ubuntu tar cvf /backup/backup.tar /dbdata

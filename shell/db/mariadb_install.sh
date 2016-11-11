#install
DEBIAN_FRONTEND=nointeractive apt-get install -y mariadb-server
#restart MariaDB service
/etc/init.d/mysql restart

echo "=> Creating MariaDB user '$1' with '$2' password."
mysql -uroot -e "CREATE USER '$1'@'%' IDENTIFIED BY '$2'"

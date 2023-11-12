#!/bin/sh

service mysql start

if [ -d "/var/lib/mysql/$MYSQL_DATABASE" ]
then 
	echo "Database already exists"
else
sleep 1
mysql -e "\
		CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}; \
		CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'; \
		GRANT ALL ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%'; \
		ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; \
		FLUSH PRIVILEGES; "

fi

echo "Shuting down the mysql service..."
mysqladmin --user=root --password=$MYSQL_ROOT_PASSWORD shutdown
echo "Mysql service has been shut down"

exec "$@"
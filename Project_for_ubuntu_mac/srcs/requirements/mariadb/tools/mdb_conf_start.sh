#!/bin/sh

cat initsql.txt | envsubst > init.sql
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
/usr/sbin/mysqld --port=3306 --init-file /init.sql
#!/bin/bash

# заменяет енв моими из файла
# sed для поиска и замены строк. echo "The quick brown fox jumps over the lazy dog" | sed 's/dog/cat/g'
# clear_md () {
#   sed -e 's/[&\\/]/\\&/g; s/$/\\/' -e '$s/\\$//' <<< "$1"
# }

# for env_variable in $(grep -o '$[A-Z_]\+' /init.sql | sort | uniq | sed 's/\$//g')
#   do sed -i "s/\$$env_variable/$(clear_md ${!env_variable})/g" /init.sql 
# done
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql;
/usr/sbin/mysqld --port=3306 --init-file /init.sql
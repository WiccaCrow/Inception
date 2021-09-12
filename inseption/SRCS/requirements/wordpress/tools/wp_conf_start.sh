#!bin/bash

cd /var/www/html/wordpress
sleep 15
wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER_ADMIN --dbpass=$DB_PASSWORD_ADMIN --dbhost=$DB_HOST --dbprefix=mdulcie
wp core install --allow-root --url=$DB_URL --title=mdulcie.ru --admin_user=$DB_USER_ADMIN  --admin_password=$DB_PASSWORD_ADMIN --admin_email=$ADMIN_MAIL
wp user create --allow-root $USER_NAME $USER_MAIL --role=author --user_pass=$USER_PASS
php-fpm7.3 -F
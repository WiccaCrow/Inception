#!bin/sh

if [ ! -e /var/www/html/wordpress/wp-config.php ]; then
    wp core download --allow-root --path=/var/www/html/wordpress --locale=ru_RU --version=5.8.1 --force
    wp config create --allow-root --path=/var/www/html/wordpress --dbname=$DB_NAME --dbuser=$DB_USER_ADMIN --dbpass=$DB_PASSWORD_ADMIN --dbhost=$DB_HOST --dbprefix=mdulcie
    echo " _____ create finish _____ "
    wp core install --allow-root --path=/var/www/html/wordpress --url=$DB_URL --title=mdulcie.ru --admin_user=$DB_USER_ADMIN  --admin_password=$DB_PASSWORD_ADMIN --admin_email=$ADMIN_MAIL
    echo " _____ core install finish _____ "
    wp user create --allow-root --path=/var/www/html/wordpress $USER_NAME $USER_MAIL --role=author --user_pass=$USER_PASS
    echo " _____ user create finish _____ "
    # Redis cache install and activate plagin for cache (for redis - bonus).
    wp plugin install redis-cache --allow-root --path=/var/www/html/wordpress

    chmod 666 /var/www/html/wordpress/wp-config.php

    sed -i '67d;67r "define( 'WP_DEBUG', false );"' /var/www/html/wordpress/wp-config.php

    # https://stackoverflow.com/questions/26009752/replace-line-in-text-file-with-line-from-other-text-file
    sed -i '40,58d;39r /wp-config_redis.txt' /var/www/html/wordpress/wp-config.php

    chmod 644 /var/www/html/wordpress/wp-config.php
fi

wp plugin activate redis-cache --allow-root --path=/var/www/html/wordpress
wp redis enable --allow-root --path=/var/www/html/wordpress

php-fpm7.3 -F
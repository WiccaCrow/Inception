#!bin/bash

cd /var/www/html/wordpress
sleep 15
if [ ! -e /var/www/html/wordpress/wp-config.php ]; then
wp config create --allow-root --dbname=$DB_NAME --dbuser=$DB_USER_ADMIN --dbpass=$DB_PASSWORD_ADMIN --dbhost=$DB_HOST --dbprefix=mdulcie
wp core install --allow-root --url=$DB_URL --title=mdulcie.ru --admin_user=$DB_USER_ADMIN  --admin_password=$DB_PASSWORD_ADMIN --admin_email=$ADMIN_MAIL
wp user create --allow-root $USER_NAME $USER_MAIL --role=author --user_pass=$USER_PASS

# W3TC install and activate plagin for cache (for redis - bonus).
# echo "define ('FS_METHOD', 'direct');" >> /var/www/html/wordpress/wp-config.php
# chmod 777 -R /var/www/html/wordpress/wp-content
# wp --allow-root --path='/var/www/html/wordpress' plugin install w3-total-cache --activate
# chmod 755 -R /var/www/html/wordpress/wp-content
# rm -rf /var/www/html/wordpress/wp-content/cache/tmp
# cat /for_redis.txt >> /var/www/html/wordpress/nginx.conf

# Redis cache install and activate plagin for cache (for redis - bonus).
wp plugin install redis-cache --allow-root --path='/var/www/html/wordpress'

chmod 666 /var/www/html/wordpress/wp-config.php

sed -i '67d/67r "define( 'WP_DEBUG', false );"' /var/www/html/wordpress/wp-config.php

# https://stackoverflow.com/questions/26009752/replace-line-in-text-file-with-line-from-other-text-file
sed -i '40,58d;1r /wp-config_redis.txt' /var/www/html/wordpress/wp-config.php

chmod 644 /var/www/html/wordpress/wp-config.php
fi

wp plugin activate redis-cache --allow-root --path='/var/www/html/wordpress'
wp redis enable --allow-root --path='/var/www/html/wordpress'

php-fpm7.3 -F

# cd /var/www/html/wordpress/wp-admin
# wp --allow-root --path='/var/www/html/wordpress' plugin list
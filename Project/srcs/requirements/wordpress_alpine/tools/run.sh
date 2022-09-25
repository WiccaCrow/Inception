#!/bin/sh

set -x

if [ ! -e wp-config.php ]; then
 echo "wp-cli core download"
 wp-cli core download --allow-root --path=/var/www/html/wordpress --version=5.8.1 --force
 echo "wp-cli config create: start"
 wp-cli config create --allow-root --path=/var/www/html/wordpress \
  --dbname=$DB_NAME          \
  --dbuser=$DB_USER_ADMIN     \
  --dbpass=$DB_PASSWORD_ADMIN     \
  --dbhost=$DB_HOST          \
  --dbprefix=mdulcie
 echo "wp-cli config create: finished"
# fi

# if wp-cli core is-installed; then
#  echo "Wordpress already installed"
# else
#  echo "wp-cli core install: start"
#  wp-cli core install                  \
#   --url=$DB_URL                    \
#   --title=mdulcie.ru                \
#   --admin_user=$DB_USER_ADMIN      \
#   --admin_password=$DB_PASSWORD_ADMIN  \
#   --admin_email=$ADMIN_MAIL    
  
#  wp-cli user create                   \
#   $USER_NAME                    \
#   $USER_EMAIL                   \
#   --role=author                    \
#   --user_pass=$USER_PASS        

#  chmod 666 /var/www/html/wordpress/wp-config.php
# #  wp-cli plugin install redis-cache --allow-root --path=/var/www/html/wordpress
#  echo "wp-cli core install: finished"
# fi

# # wp-cli plugin activate redis-cache
# # wp-cli redis enable

# exec php-fpm7 --nodaemonize $@



# set -x

# if [ ! -e wp-config.php ]; then
#  wp-cli config create --allow-root \
#   --dbname=$WP_DB_NAME      \
#   --dbuser=$MYSQL_USER_NAME \
#   --dbpass=$MYSQL_USER_PASS \
#   --dbhost=$MYSQL_HOST

#  wp-cli db create
fi

if wp-cli core is-installed; then
 echo "Wordpress core already installed"
else
 wp-cli core install                  \
  --url=$DB_URL                    \
  --title=mdulcie.ru                \
  --admin_user=$DB_USER_ADMIN      \
  --admin_password=$DB_PASSWORD_ADMIN  \
  --admin_email=$ADMIN_MAIL    
  
 wp-cli user create                   \
  $USER_NAME                    \
  $USER_EMAIL                   \
  --role=author                    \
  --user_pass=$USER_PASS        

 wp-cli plugin install redis-cache --allow-root --path=/var/www/html/wordpress

 wp-cli config set WP_DEBUG false
 wp-cli config set WP_REDIS_HOST redis --add
 wp-cli config set WP_REDIS_PORT 6379 --add
fi

wp-cli plugin activate redis-cache
wp-cli plugin update --all
wp-cli redis enable

exec php-fpm7 --nodaemonize $@
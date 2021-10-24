#!bin/bash

sleep 50

mkdir -p /var/www/html/adminer/
mkdir -p /run/php
cd /var/www/html/adminer
wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
mv adminer-4.8.1.php adminer.php
chmod 755 -R /var/www/html/adminer/adminer.php
chown -R www-data:www-data /var/www/html/adminer/

php-fpm7.3 -F
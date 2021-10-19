FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install adminer php-fpm php-mysql php-cli wget && \
    mkdir -p /var/www/html/adminer/ && \
    mkdir -p /run/php

WORKDIR /var/www/html/adminer

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O adminer.php && \
    chmod 755 -R /var/www/html/adminer/adminer.php && \
    chown -R www-data:www-data /var/www/html/adminer/

# COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

# RUN touch /run/php/php7.3-fpm.pid && \
# chown -R www-data:www-data /var/www/* && \
# chmod -R 755 /var/www/* 
# WORKDIR    /var/www/html/adminer/
# RUN wget http://www.adminer.org/latest.php -O /var/www/html/adminer/index.php

CMD ["php-fpm7.3", "-F"]
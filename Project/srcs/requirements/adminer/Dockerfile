FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install  adminer             \
                        php-mysql           \
                        php-cli wget        \
                        php-fpm          && \
    mkdir -p /var/www/html/adminer       && \
    mkdir -p /run/php

WORKDIR /var/www/html/adminer

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php && \
    mv adminer-4.8.1.php index.php               && \
    chmod 755 -R index.php                       && \
    chown -R www-data:www-data /var/www/html/    && \
    rm -rf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

ENTRYPOINT ["php-fpm7.3", "-F"]
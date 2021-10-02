FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install unzip wget php-fpm mariadb-client php-pdo-mysql php-mbstring php-mysqli procps net-tools telnet vim && \
    mkdir -p /run/php /var/www/html

WORKDIR /var/www/html

RUN wget https://ru.wordpress.org/wordpress-5.8.1-ru_RU.tar.gz && tar -xzf wordpress-5.8.1-ru_RU.tar.gz && rm -rf wordpress-5.8.1-ru_RU.tar.gz && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    chown -R root /var/www/html/wordpress && chmod -R 755 /var/www/html/wordpress

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./conf/wp-config_redis.txt /wp-config_redis.txt
# COPY ./conf/for_redis_W3TC.txt /for_redis.txt
COPY ./tools/wp_conf_start.sh /wp_conf_start.sh

WORKDIR /

RUN chmod +x /wp_conf_start.sh

CMD ["/wp_conf_start.sh"]
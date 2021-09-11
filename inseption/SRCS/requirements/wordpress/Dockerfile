FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install wget php-fpm php-pdo-mysql php-mbstring php-mysqli procps net-tools telnet vim && \
    mkdir -p /run/php /var/www/html

WORKDIR /var/www/html

RUN wget https://ru.wordpress.org/wordpress-5.8.1-ru_RU.tar.gz && tar -xzf wordpress-5.8.1-ru_RU.tar.gz && rm -rf wordpress-5.8.1-ru_RU.tar.gz && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && \
    chown -R root /var/www/html/wordpress && chmod -R 755 /var/www/html/wordpress

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

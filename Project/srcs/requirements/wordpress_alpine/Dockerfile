FROM alpine:3.14

RUN apk update && apk upgrade                                            && \
    apk add wget            php             php7-phar       php7-fpm        \
            php7-json       mariadb-client  php7-mysqli     php7-zip        \
            php7-gd         php7-mbstring   php7-cli        php7-opcache    \
            php7-zlib       php7-curl       php7-iconv      php7-gettext    \
            php7-session    php7-pdo        php7-pdo_mysql               && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
        --output-document=/usr/local/bin/wp-cli                          && \
    chmod +x /usr/local/bin/wp-cli                                       && \
    mkdir -p /run/php /var/www/html/wordpress                            && \
    chown -R root /var/www/html/wordpress                                && \
    chmod -R 755 /var/www/html/wordpress                                 && \
    addgroup -S nginx && adduser -S nginx

COPY ./conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY ./tools/run.sh /run.sh

RUN chmod +x /run.sh

WORKDIR /var/www/html/wordpress

EXPOSE 9000

ENTRYPOINT [ "/run.sh" ]

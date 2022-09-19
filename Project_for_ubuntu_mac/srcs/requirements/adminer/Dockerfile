FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install adminer php-mysql php-cli wget \
                               php-fpm

COPY ./tools/adminer.sh /
COPY ./conf/www.conf /www.conf 

RUN chmod +x /adminer.sh
ENTRYPOINT ["/adminer.sh"]
FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install adminer php-fpm php-mysql php-cli wget

COPY ./tools/adminer.sh /

RUN chmod +x /adminer.sh

CMD ["/adminer.sh"]
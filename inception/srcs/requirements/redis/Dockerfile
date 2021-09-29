FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install redis-server php-redis

COPY ./conf/redis.conf /etc/redis/redis.conf
COPY ./tools/redis.sh /redis.sh

RUN chmod +x /redis.sh

CMD ["/redis.sh"]
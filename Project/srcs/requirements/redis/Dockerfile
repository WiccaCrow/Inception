FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install redis-server

COPY ./conf/redis.conf /etc/redis/redis.conf

CMD ["redis-server", "/etc/redis/redis.conf"]
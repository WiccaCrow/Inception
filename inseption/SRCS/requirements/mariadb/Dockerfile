FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install mariadb-server
RUN mkdir /run/mysqld
RUN chown mysql:mysql /run/mysqld

COPY ./conf/my.conf /root/.my.cnf

FROM debian:buster

# gettext-base - for envsubst (substitutes environment variables in shell format strings)
RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install mariadb-server gettext-base vim && \
    mkdir /run/mysqld && chown mysql:mysql /run/mysqld

COPY ./conf/my.conf /root/.my.cnf
COPY ./tools/mdb_conf_start.sh /mdb_conf_start.sh 
COPY ./tools/initsql.txt /initsql.txt

RUN chmod +x /mdb_conf_start.sh

ENTRYPOINT ["/mdb_conf_start.sh"]
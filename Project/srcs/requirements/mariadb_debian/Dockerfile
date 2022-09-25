FROM debian:buster

# gettext-base - for envsubst (substitutes environment variables in shell format strings)
RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install  mariadb-server      \
                        gettext-base     && \
    mkdir /run/mysqld                    && \
    chown mysql:mysql /run/mysqld

COPY ./conf/my.conf /root/.my.cnf
COPY ./tools/mdb.sh /mdb.sh 
COPY ./tools/initsql.txt /initsql.txt

RUN chmod +x /mdb.sh

ENTRYPOINT ["/mdb.sh"]
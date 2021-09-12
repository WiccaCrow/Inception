FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install mariadb-server
RUN mkdir /run/mysqld && chown mysql:mysql /run/mysqld

COPY ./conf/my.conf /root/.my.cnf
COPY ./tools/mdb_conf_start.sh /mdb_conf_start.sh
COPY ./tools/init.sql /init.sql

RUN chmod +x /mdb_conf_start.sh
ENTRYPOINT ["/mdb_conf_start.sh"]

CMD ["/usr/sbin/mysqld", "--port=3306", "--init-file", "/init.sql"]

# CMD ["/usr/sbin/mysqld","--init-file","/scripts/init.sql"]
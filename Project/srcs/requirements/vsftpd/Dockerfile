FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install vsftpd            && \
    rm /etc/vsftpd.conf
    # apt-get -y install vim net-tools lsof && \

COPY ./conf/vsftpd.conf /vsftpd.conf
COPY ./tools/vsftpd.sh  /vsftpd.sh
RUN chmod +x /vsftpd.sh

ENTRYPOINT ["/vsftpd.sh"]
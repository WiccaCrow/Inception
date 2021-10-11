FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    # apt-get -y install vim net-tools lsof && \
    apt-get -y install vsftpd && \
    rm /etc/vsftpd.conf

COPY ./conf/vsftpd.conf /vsftpd.conf
COPY ./tools/vsftpd-v3.sh /vsftpd.sh
RUN chmod +x /vsftpd.sh

CMD ["/vsftpd.sh"]
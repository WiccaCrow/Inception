FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    # apt-get -y install vim net-tools lsof && \
    apt-get -y install vsftpd && \
    # apt-get -y install vim vsftpd ftp db5.3-util libpam-pwdfile && \
    rm /etc/vsftpd.conf

COPY ./conf/vsftpd.conf /vsftpd.conf
COPY ./tools/vsftpd-v3.sh /vsftpd.sh
RUN chmod +x /vsftpd.sh

# ENTRYPOINT ["/vsftpd.sh"]
# CMD ["/vsftpd.sh"]

# CMD ["service", "vsftpd", "start"]
# CMD ["ftp", "&"]
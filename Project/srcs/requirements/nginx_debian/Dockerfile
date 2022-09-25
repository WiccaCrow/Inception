FROM debian:buster

RUN apt-get update && apt-get upgrade -y                 && \
    apt-get install -y nginx                                \
                       openssl                              \
                       nmap                                 \
                       vim                               && \
    rm -rf /etc/nginx/sites-enabled/default              && \
    ln -sf /dev/stdout /var/log/nginx/access.log         && \
    ln -sf /dev/stderr /var/log/nginx/error.log

COPY ./conf/nginx.conf /etc/nginx/sites-available
COPY ./tools/nginx.sh /nginx.sh

RUN chmod +x /nginx.sh                                   && \
    ln -s /etc/nginx/sites-available/nginx.conf             \
          /etc/nginx/sites-enabled/nginx.conf               \
    mkdir /etc/nginx/ssl                                 && \
    openssl req -newkey rsa:2048 -nodes -x509 -days 3650    \
    -keyout /etc/nginx/ssl/mdulcie.key                      \
    -out    /etc/nginx/ssl/mdulcie.crt                      \
    -subj  '/C=RU/ST=Kazan/L=Kazan/O=21school/OU=42cursus/CN=mdulcie'

ENTRYPOINT ["/nginx.sh"]
# ENTRYPOINT ["nginx", "-g", "daemon off;"]
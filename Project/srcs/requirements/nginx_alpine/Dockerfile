FROM alpine:3.14

RUN apk update && apk upgrade
RUN apk add --no-cache  nginx               \
                        gettext             \
                        openssl             \
                        net-tools        && \
    rm -rf /etc/nginx/http.d/default.conf

COPY ./conf/default.conf /default.conf
COPY ./tools/nginx.sh /nginx.sh

RUN chmod +x /nginx.sh                   && \
    mkdir /certs/                        && \
    openssl req -newkey rsa:2048            \
                -nodes                      \
                -x509                       \
                -days 3650                  \
                -keyout /certs/mdulcie.key  \
                -out    /certs/mdulcie.crt  \
                -subj '/C=RU/ST=Kazan/L=Kazan/O=21school/OU=42cursus/CN=mdulcie'
ENTRYPOINT [ "/nginx.sh" ]
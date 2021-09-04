FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y nginx openssl nmap vim

RUN  ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log 

CMD ["nginx", "-g", "daemon off;"]
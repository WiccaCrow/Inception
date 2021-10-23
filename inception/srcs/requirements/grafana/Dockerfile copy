FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install vim wget lsof
    # apt-get -y install openssh-server ssh

RUN wget https://dl.grafana.com/oss/release/grafana-7.3.7.linux-amd64.tar.gz && \
    tar -zxvf grafana-7.3.7.linux-amd64.tar.gz && \
    rm -f grafana-7.3.7.linux-amd64.tar.gz

WORKDIR /grafana-7.3.7/bin/

COPY ./srcs/grafana.db /grafana-7.3.7/data/

# EXPOSE 3000

CMD ["./grafana-server"]
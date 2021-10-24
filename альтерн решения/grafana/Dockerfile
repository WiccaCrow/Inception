FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get -y install vim wget lsof 

# grafana
# https://grafana.com/grafana/download/8.1.7?edition=oss
# RUN wget https://dl.grafana.com/oss/release/grafana_8.1.7_amd64.deb
    # dpkg -i grafana_8.1.7_amd64.deb && rm -rf grafana_8.1.7_amd64.deb

RUN wget https://dl.grafana.com/oss/release/grafana-8.1.7.linux-amd64.tar.gz && \
    tar -zxvf grafana-8.1.7.linux-amd64.tar.gz && \
    rm -f grafana-8.1.7.linux-amd64.tar.gz

WORKDIR /grafana-8.1.7/bin/

CMD ["./grafana-server"]
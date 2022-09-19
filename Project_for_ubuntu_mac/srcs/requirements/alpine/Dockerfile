# FROM alpine:3.14

# RUN apk update && apk upgrade
# RUN apk add php7 php7-fpm wget && \
#     wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php && \
#     mv adminer-4.8.1.php adminer.php
# RUN wget "https://github.com/google/cadvisor/releases/download/v0.45.0/cadvisor-v0.45.0-linux-amd64" \
# --output-document="/usr/bin/cadvisor"
# RUN chmod +x /usr/bin/cadvisor
# RUN /usr/bin/cadvisor -logtostderr

# RUN apk add bash

# CMD ["/bin/bash"]






FROM alpine:3.14

LABEL maintainer="Ilnur Timergaliev <timergaliev.code@gmail.com>" \
   architecture="arm64v8/aarch64" \
   build="14-Sep-2022"

RUN apk update && apk upgrade
RUN apk add --no-cache nginx nano gettext

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

COPY ./tools/run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 443

# CMD [ '/run.sh' ]

RUN apk add bash

CMD ["/bin/bash"]


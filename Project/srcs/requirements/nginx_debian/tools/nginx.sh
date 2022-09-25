#!/bin/sh

if [ -e /default.conf ]; then
    cat /default.conf | envsubst '$DB_URL' > /etc/nginx/http.d/default.conf
    rm /default.conf
fi

nginx -g 'daemon off;'
#!/bin/bash

# Запуск и автозапуск Redis при загрузке системы:
# systemctl start redis.service
# systemctl enable redis.service

# Установка расширения Redis PHP на VPS Linux
# Для того, чтобы иметь возможность использовать Redis в качестве кэша объектов для вашего сайта WordPress вам нужно установить расширение PHP Redis. Это позволит WordPress общаться с key-value магазина Redis.
# apt-get install php-redis

redis-server /etc/redis/redis.conf
redis-cli
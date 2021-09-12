#  https://www.gnu.org/software/make/manual/make.pdf
#  https://www.gnu.org/software/make/manual/

THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: help build up start down destroy stop restart logs logs-api ps login-timescale login-api db-shell
# Commands available for make:
#  https://question-it.com/questions/4885548/kak-poluchit-spisok-tselej-v-make-fajle
#  https://habr.com/ru/company/ruvds/blog/486682/

# Collect an image from docker-compose.yml
all: build up start
# build:				;	docker-compose -f ./srcs/docker-compose.yml build --no-cache
build:				;	docker-compose -f ./srcs/docker-compose.yml build
up:					;	docker-compose -f ./srcs/docker-compose.yml up
start:				;	docker-compose -f ./srcs/docker-compose.yml start
stop:				;	docker-compose -f ./srcs/docker-compose.yml stop
down:				;	docker-compose -f ./srcs/docker-compose.yml down
stop_down:			;	docker-compose -f ./srcs/docker-compose.yml stop
						docker-compose -f ./srcs/docker-compose.yml down

logs:				;	docker-compose -f ./srcs/docker-compose.yml logs --tail=100 -f

logs-api:			;	docker-compose -f ./srcs/docker-compose.yml logs --tail=100 -f api

ps:					;	docker ps

login-mdb:		;	docker exec -it mariadb bash
login-nginx:		;	docker exec -it nginx bash
login-wp:	;	docker exec -it wordpress bash

clean:				;	docker system prune -a
						rm -rf ./srcs/data/db/*
						rm -rf ./srcs/data/wordpress/*

ls-volume:			;	docker volume ls
ls-container:		;	docker container ls -a
ls-network:			;	docker network ls
ls-image:			;	docker image ls

re: clean all

help:				;	make -pRrq  -f $(THIS_FILE) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
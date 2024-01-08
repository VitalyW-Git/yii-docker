.DEFAULT: help

H1=echo === ${1} ===
TAB=@echo "\t"

help:
	@$(call H1, WEBSHOP)
	$(TAB) make up - поднять все контейнеры
	$(TAB) make down - остановить все контейнеры
	$(TAB) make php - войти в bash сервиса php
	$(TAB) make nginx - войти в bash сервиса nginx
	$(TAB) make db - войти в bash сервиса mysql
	$(TAB) make ci - composer install
	$(TAB) make dump - развернуть дамп dump.sql из docker/dump
	$(TAB) make stop - удаляем контейнеры
	$(TAB) make ps - информация о контейнерах

up:
	docker compose up -d --build --remove-orphans

down:
	docker compose down

stop:
	docker compose down --remove-orphans

ps:
	docker ps

migrate:
	docker compose exec php php yii migrate

php:
	docker compose exec php bash

nginx:
	docker compose exec nginx bash

ci:
	docker compose exec php composer install

db:
	docker compose exec db bash

dump:
	docker compose exec db sh -c 'mysql -uroot -ppassword webshop < ./docker/dump/dump.sql'


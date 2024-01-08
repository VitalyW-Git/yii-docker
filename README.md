# Проект Yii2 с конфигурацией Docker
Проект Yii2 с предустановленными конфигурациями для PHP, Nginx, MySQL и Redis, использующий Docker.

## Использование проекта
1. Скопировать файл `.env.example` в `.env`.
2. Скопировать файл `docker.exempel` в `docker`.
3. Запустить скрипт `setup.sh` в директории `docker` для первоначальной настройки:
    - Назначить права для каталогов `web/assets/` и `runtime`.
    - Запустить команду `make up` для поднятия контейнеров.
    - Выполнить команду `make ci` для установки зависимостей.
    - Создать пользователя для MySQL.
4. Перезапустить контейнеры, выполнив команду `make down` и затем команду `make up`.
5. После успешного запуска и создания пользователя, накатить базу, предварительно добавив в `docker/dump` созданный дамп `dump.sql`

## Команды Makefile
- `make up`: поднять все контейнеры.
- `make ci`: установить зависимости.
- `make down`: остановить контейнеры.

## Важно
Убедитесь, что у вас установлены Docker, Docker Compose, а также все необходимые зависимости проекта Yii2.

## Зависимости
- PHP
- Nginx
- MySQL
- Redis

## Лицензия
Этот проект распространяется под лицензией MIT. Подробности смотрите в файле `LICENSE`.
#!/usr/bin/env bash

MAIN_dir=`pwd`

echo $MAIN_dir

chmod -R 777 web/assets/
chmod -R 777 runtime/

cd "$MAIN_dir" || exit 1

make up
make ci

sleep 5

docker compose exec db sh -c "mysql -uroot -ppassword -hdb < docker/create_user.sql"

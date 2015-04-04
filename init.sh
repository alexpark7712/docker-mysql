#!/bin/bash
set -e

/entrypoint.sh "$@" &

sleep 10s

mysql -h 127.0.0.1 -u "$MYSQL_USER" -p"$MYSQL_PASSWORD" "$MYSQL_DATABASE" < /init-sql.sql

while :; do sleep 1; done
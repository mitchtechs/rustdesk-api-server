#!/bin/bash

cd /rustdesk-api-server;

if [ ! -e "./db/db.sqlite3" ]; then
    cp "./db_bak/db.sqlite3" "./db/db.sqlite3"
    echo "First Run, Initializing Database..."
fi

python manage.py makemigrations
python manage.py migrate
python manage.py runserver $HOST:21114;

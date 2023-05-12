#!/bin/sh

cd /opt/pistosi-sbx
python ./src/manage.py runserver 0.0.0.0:${DJANGO_PORT}

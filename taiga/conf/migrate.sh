#!/bin/bash
docker exec -it taiga-back python manage.py migrate

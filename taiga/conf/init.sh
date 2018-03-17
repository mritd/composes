#!/bin/bash

set -e

docker exec -it taiga-back python manage.py migrate
docker exec -it taiga-back python manage.py loaddata initial_user
docker exec -it taiga-back python manage.py loaddata initial_project_templates
docker exec -it taiga-back python manage.py compilemessages
docker exec -it taiga-back python manage.py collectstatic

docker exec -it rabbitmq rabbitmqctl add_user taiga taiga
docker exec -it rabbitmq rabbitmqctl add_vhost taiga
docker exec -it rabbitmq rabbitmqctl set_permissions -p taiga taiga ".*" ".*" ".*"

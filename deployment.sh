#!/bin/sh
set -eu
docker-compose up  --build -d
docker-compose run --rm web rake db:migrate

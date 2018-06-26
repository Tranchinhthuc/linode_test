#!/bin/sh
set -eu
docker-compose up  --build -d
docker-compose run --rm website rake db:migrate

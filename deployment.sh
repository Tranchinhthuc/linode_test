#!/bin/sh
set -eu
docker-compose up  --build
docker-compose run --rm website rake db:migrate

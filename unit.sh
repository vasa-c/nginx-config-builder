#!/usr/bin/env bash

CMD="/var/www/app/tests/devops/scripts/unit.sh $*"

cd $(dirname "$0")/tests/devops \
&& docker-compose build \
&& docker-compose run --rm php /bin/sh -c "$CMD"

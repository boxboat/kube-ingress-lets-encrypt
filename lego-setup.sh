#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

envsubst < lego-setup.yml \
    | kubectl apply -f -

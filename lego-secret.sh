#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

envsubst < lego-secret.yml \
    | kubectl apply -f -

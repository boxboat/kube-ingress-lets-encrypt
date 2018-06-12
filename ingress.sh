#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

envsubst < ingress.yml \
    | kubectl apply -f -

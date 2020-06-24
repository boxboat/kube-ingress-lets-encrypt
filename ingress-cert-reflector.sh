#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

envsubst < ingress-cert-reflector.yml \
    | kubectl apply -f  -

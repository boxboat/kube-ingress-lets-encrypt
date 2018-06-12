#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

envsubst < lego-renew-cert.yml \
    | kubectl apply -f -

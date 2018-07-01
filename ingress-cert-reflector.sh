#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

envsubst '${KUBECTL_VERSION},${TLS_SECRET},${NAMESPACE}' < ingress-cert-reflector.yml \
    | kubectl apply -f -

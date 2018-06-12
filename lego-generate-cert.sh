#!/bin/bash

cd $(dirname $0)
set -a
. "vars.env"
set +a

if kubectl -n "${NAMESPACE}" get job lego-generate > /dev/null 2>&1
then
    kubectl -n "${NAMESPACE}" delete job lego-generate
fi

envsubst < lego-generate-cert.yml \
    | kubectl apply -f -

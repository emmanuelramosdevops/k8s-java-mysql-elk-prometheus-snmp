#!/bin/bash
kubectl delete secret mysql-credentials -n infra

kubectl create secret generic mysql-credentials \
    --from-literal mysql-root-password=$1 \
    --from-literal mysql-password=$1 \
    --from-literal mysql-replication-password=$1 \
    -n infra
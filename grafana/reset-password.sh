#!/bin/bash
# $1 = Password

export POD_NAME=$(kubectl get pods --namespace infra -l "app.kubernetes.io/name=grafana,app.kubernetes.io/instance=grafana" -o jsonpath="{.items[0].metadata.name}")

kubectl exec -n infra $POD_NAME -- grafana-cli admin reset-admin-password $1
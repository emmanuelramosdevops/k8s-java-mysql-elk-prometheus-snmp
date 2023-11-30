#!/bin/bash
tag="local/external-api:$(date +%d-%m-%H-%M)"

docker build -t $tag ../../external-api/

minikube cache add $tag -p api

helm uninstall external-api -n app

sleep 3

helm install external-api -f values-local.yaml --set pod.image=$tag . -n app
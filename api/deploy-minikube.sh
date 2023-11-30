#!/bin/bash
tag="local/api:$(date +%d-%m-%H-%M)"

docker build -t $tag ../../api/

minikube cache -p api add $tag

helm uninstall api -n app

sleep 3

helm install api -f values-local.yaml --set pod.image=$tag . -n app
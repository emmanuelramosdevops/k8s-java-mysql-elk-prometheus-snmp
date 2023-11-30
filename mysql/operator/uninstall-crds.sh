#!/bin/bash

kubectl delete clusterrole mysql-operator
kubectl delete clusterrole mysql-sidecar
kubectl delete clusterrolebinding mysql-operator-rolebinding
kubectl delete clusterkopfpeering mysql-operator
kubectl delete ns mysql-operator

kubectl delete sa mysql-operator-sa -n infra
kubectl delete deployment mysql-operator -n infra
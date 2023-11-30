#!/bin/bash

kubectl apply -f 1-deploy-crds.yaml

sleep 3

kubectl apply -f 2-deploy-operator.yaml
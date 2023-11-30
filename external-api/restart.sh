#!/bin/bash

helm uninstall external-api -n app
sleep 5
helm install external-api -f values-local.yaml . -n app
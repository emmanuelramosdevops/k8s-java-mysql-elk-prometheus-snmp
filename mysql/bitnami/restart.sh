#!/bin/bash

helm uninstall mysql -n infra
sleep 3
helm install mysql -f values.yaml . -n infra
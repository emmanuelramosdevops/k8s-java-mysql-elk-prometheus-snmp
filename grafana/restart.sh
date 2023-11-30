#!/bin/bash

helm uninstall grafana -n infra
sleep 5
helm install grafana -f values.yaml . -n infra
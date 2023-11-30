#!/bin/bash

helm uninstall vm-alert -n infra
sleep 3
helm install vm-alert -f values.yaml . -n infra
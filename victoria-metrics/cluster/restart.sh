#!/bin/bash

helm uninstall vm -n infra
sleep 3
helm install vm -f values.yaml . -n infra
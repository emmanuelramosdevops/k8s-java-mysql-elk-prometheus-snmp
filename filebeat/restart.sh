#!/bin/bash

helm uninstall filebeat -n infra

sleep 3

helm install filebeat -f values.yaml . -n infra
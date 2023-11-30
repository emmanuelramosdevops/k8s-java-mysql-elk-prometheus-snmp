#!/bin/bash

helm uninstall elasticsearch -n infra

sleep 3

helm install elasticsearch -f values.yaml . -n infra
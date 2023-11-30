#!/bin/bash

helm uninstall vm-agent -n infra

sleep 8

helm install vm-agent -f values.yaml . -n infra
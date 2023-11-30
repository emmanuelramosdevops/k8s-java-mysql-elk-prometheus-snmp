#!/bin/bash

helm uninstall snmp-notifier -n infra
sleep 3
helm install snmp-notifier . -n infra
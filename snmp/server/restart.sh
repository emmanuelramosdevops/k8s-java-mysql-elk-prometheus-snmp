#!/bin/bash

helm uninstall snmp-server -n infra
sleep 3
helm install snmp-server . -n infra
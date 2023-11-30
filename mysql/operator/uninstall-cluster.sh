#!/bin/bash

kubectl delete secret mysql-secret -n infra

kubectl delete innodbcluster mysql-cluster-1 -n infra
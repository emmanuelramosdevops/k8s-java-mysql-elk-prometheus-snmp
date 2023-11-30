#!/bin/bash

curl -v --header "Content-Type: application/json" \
  -d @$1 \
  http://localhost:9464/alerts
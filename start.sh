#!/bin/bash
app="docker-flask-test"
docker build -t ${app} .
docker run -d -p 2221:80 \
  --name=${app} \
  -v $PWD:/app ${app}
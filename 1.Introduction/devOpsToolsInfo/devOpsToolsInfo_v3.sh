#!/bin/bash

java --version | awk 'NR==1{print $2}'

git --version | awk '{print $3}'

cat /var/lib/jenkins/config.xml  | grep '<version>' | awk -F'[<>]' '{ print $3}'

nginx -version 2>&1 | awk -F'/' '{print $NF}'

docker --version | awk '{print $3}' | tr -d ","

ansible --version | awk 'NR==1{print $2}'

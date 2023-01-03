#!/bin/bash

echo -n "Java Version is: "
java --version | awk 'NR==1{print $2}'

echo -n "Git Version is: "
git --version | awk '{print $3}'

echo -n "Jenkins Version is: "
cat /var/lib/jenkins/config.xml  | grep '<version>' | awk -F'[<>]' '{ print $3}'

echo -n "Ngnix Version is: "
nginx -version 2>&1 | awk -F'/' '{print $NF}'

echo -n "Docker Version is: "
docker --version | awk '{print $3}' | tr -d ","

echo -n "Ansible Version is: "
ansible --version | awk 'NR==1{print $2}'

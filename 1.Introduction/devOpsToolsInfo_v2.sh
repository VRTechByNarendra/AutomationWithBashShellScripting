#!/bin/bash
java --version | awk 'NR==1{print}'
cat /var/lib/jenkins/config.xml  | grep '<version>'
nginx -version 2>&1 | awk -F'/' '{print }'
docker --version
ansible --version | grep -E "^ansible"

#!/bin/bash
# Simple Shell Script just to display java, jenkins, nginx, docker and ansible versions
java --version
cat /var/lib/jenkins/config.xml  | grep '<version>'
nginx -version
docker --version
ansible --version

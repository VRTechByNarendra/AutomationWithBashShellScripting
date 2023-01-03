#!/bin/bash

java --version 

git --version

cat /var/lib/jenkins/config.xml  | grep '<version>' 

nginx -version 

docker --version 

ansible --version 

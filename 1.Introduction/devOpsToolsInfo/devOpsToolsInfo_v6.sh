#!/bin/bash

javaVersion=$(java --version | awk 'NR==1{print $2}')

gitVersion=$(git --version | awk '{print $3}')
jenkinsVersion=$(cat /var/lib/jenkins/config.xml  | grep '<version>' | awk -F'[<>]' '{ print $3}')

nginxVersion=$(nginx -version 2>&1 | awk -F'/' '{print $NF}')

dockerVersion=$(docker --version | awk '{print $3}' | tr -d ",")

ansibleVersion=$(ansible --version | awk 'NR==1{print $2}')
cat << EOF  | mailx -s "DevOps Tools Info on $(hostname)" ubuntugtest@gmail.com
ToolName     : Version
java	     : ${javaVersion} 
git          : ${gitVersion}
jenkins      : ${jenkinsVersion}  
nginx        : ${nginxVersion}
docker       : ${dockerVersion}
ansible      : ${ansibleVersion}
EOF

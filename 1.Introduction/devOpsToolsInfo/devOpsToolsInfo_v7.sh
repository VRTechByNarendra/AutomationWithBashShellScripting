#!/bin/bash

javaVersion=$(java --version | awk 'NR==1{print $2}')

gitVersion=$(git --version | awk '{print $3}')

jenkinsVersion=$(cat /var/lib/jenkins/config.xml  | grep '<version>' | awk -F'[<>]' '{ print $3}')

nginxVersion=$(nginx -version 2>&1 | awk -F'/' '{print $NF}')

dockerVersion=$(docker --version | awk '{print $3}' | tr -d ",")

ansibleVersion=$(ansible --version | awk 'NR==1{print $2}')

cat << EOF | mailx -s "$(echo -e "DevOps Tools Info on $(hostname)\nContent-Type: text/html")" ubuntugtest@gmail.com
<!DOCTYPE html>
<html>

<head>
    <title>
         Automation By VRTechnologies
    </title>
</head>

<body>
    <h2>Please Find Below Table For DevOps Tools Versions </h1>
    <table border="1">
        <tr>
            <th>ToolName</th>
            <th>Version</th>
        </tr>
        <tr>
            <td>Git</td>
            <td>${gitVersion}</td>
        </tr>  
        <tr>
            <td>Java</td>
            <td>${javaVersion}</td>
        </tr>
        <tr>
            <td>Jenkins</td>
            <td>${jenkinsVersion}</td>
        </tr>
        <tr>
            <td>Nginx</td>
            <td>${nginxVersion}</td>
        </tr>
        <tr>
            <td>Docker</td>
            <td>${dockerVersion}</td>
        </tr>
        <tr>
            <td>Ansible</td>
            <td>${ansibleVersion}</td>
        </tr>
    </table>
</body>

</html>
EOF


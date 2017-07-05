#!/bin/bash

apt-get update -y
apt-get install -y tomcat7 lsof

service tomcat7 start
update-rc.d tomcat7 enable

[ -f /var/lib/tomcat7/webapps/loginapp.war ] && rm -rf /var/lib/tomcat7/webapps/loginapp.war

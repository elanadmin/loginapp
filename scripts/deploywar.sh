#!/bin/bash

apt-get update -y
apt-get install -y tomcat7 lsof

service tomcat7 start
update-rc.d tomcat7 enable

if [ -f /var/lib/tomcat7/webapps/loginapp.war ];then
rm -rf /var/lib/tomcat7/webapps/loginapp.war
fi

exit 0

#!/bin/bash

apt-get update -y
apt-get install -y tomcat7 lsof

service tomcat7 start
update-rc.d tomcat7 enable

[ -f /var/lib/tomcat7/webapps/loginapp.war ] && rm -rf /var/lib/tomcat7/webapps/loginapp.war

aws configure set s3.signature_version s3v4
aws s3 cp s3://elanrepo/tomcat/wars/loginapp.war /var/lib/tomcat7/webapps/loginapp.war --region us-east-1

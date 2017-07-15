#!/bin/bash

apt-get update -y
apt-get install -y mysql-client

if [ -f /root/rds_servers ];then
for rds in $(cat /root/rds_servers)
do
mysql -h $rds loginapp < /root/loginapp.users.sql
done
fi

exit 0

#!/bin/bash

apt-get update -y
apt-get install -y mysql-client

if [ -f /root/rds_servers ];then
for i in $(cat /root/rds_servers)
do
mysql -h $server loginapp < /root/loginapp.users.sql
done
fi

exit 0

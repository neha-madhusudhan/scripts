#!/bin/bash
ip=$(hostname -i)
services="sshd jenkins docker"
for i in $services
do
        ps -C $i
        if [ $? -ne 0 ]
        then
                echo -e "Subject: $i is not running in $ip machine\n\n please team check and fix the service" | sendmail -v nehamadhusudhanmn@gmail.com
        else
                echo "$i is up and running"
        fi
done


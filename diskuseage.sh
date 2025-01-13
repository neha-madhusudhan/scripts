#!/bin/bash

echo "My first commit"

diskUsage=$(df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g')

if [ $diskUsage -gt $30 ]; then
    
    echo -e "Subject: Disk Usage Alert" | sendmail -v "nehamadhusudhanmn@gmail.com"
fi

echo "this is a test"
echo "new test"

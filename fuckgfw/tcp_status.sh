#!/bin/bash

cur_location=$1
export http_proxy=http://192.168.1.20:8123
export https_proxy=http://192.168.1.20:8123

if [ "$cur_location" == "" ];then
    echo -e "\033[31mError: location is blank!\033[0m"
    exit 1
fi

ssh root@ss.x123.me "echo $cur_location > /tmp/monitor_location"

while true;do
    
    remote_location=`ssh root@ss.x123.me cat /tmp/monitor_location`

    if [ "$remote_location" != "$cur_location" ] && [ "$remote_location" != "" ];then
        echo -e "\033[33mswitch monitor to $remote_location...\033[0m"
        exit 0
    fi

    sleep 10
    curl --connect-timeout 10 -m 10 -iv https://www.google.com > /dev/null 2>&1
    if [ "$?" != "0" ];then
        echo -e "`date "+%Y-%m-%d %H:%M:%S"`:""\033[31m Google connection timeout...\033[0m"
        ssh root@ss.x123.me /xs/restart.sh
        (cd /home/docker-compose/fuckgfw && dc down && dc up -d)
    else
        echo -e "`date "+%Y-%m-%d %H:%M:%S"`:""\033[32m Google connection is ok...\033[0m"
    fi
done

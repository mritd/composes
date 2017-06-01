#!/bin/bash

export http_proxy=http://192.168.1.20:8123
export https_proxy=http://192.168.1.20:8123

while true;do

    sleep 10
    curl --connect-timeout 10 -m 10 -iv https://www.google.com > /dev/null 2>&1
    if [ "$?" != "0" ];then
        echo -e "`date "+%Y-%m-%d %H:%M:%S"`:""\033[31m tcpspeed connection timeout...\033[0m"
        ssh root@ss.x123.me /xs/restart.sh
        (cd /home/docker-compose/tcpspeed && dc down && dc up -d)
    else
        echo -e "`date "+%Y-%m-%d %H:%M:%S"`:""\033[32m tcpspeed is ok...\033[0m"
    fi

done

#!/bin/bash

screen_name=$"mc"

screen -dmS $screen_name

#创建screen后，执行start.sh

cmd=$"sh /usr/local/paperspigot-1.12.2/start.sh"

screen_id=`screen -ls | grep .mc | awk '{print $1}' | cut -d "." -f 1`

screen -x $screen_id -p 0 -X stuff "$cmd"

screen -x $screen_id -p 0 -X stuff $'\n'
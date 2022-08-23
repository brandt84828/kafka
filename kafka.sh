#!/bin/bash

case $1 in
"start")
    for i in hadoop102 hadoop103 hadoop104
    do
        echo "啟動 $i kafka"
        ssh $i "xxx/bin/kafka-server-start.sh" -daemon /xx//kafka/config/server.properties
    done
;;
"stop")
    for i in hadoop102 hadoop103 hadoop104
    do
        echo "Stop $i kafka"
        ssh $i "xxx/bin/kafka-server-stop.sh"
    done
;;
esac

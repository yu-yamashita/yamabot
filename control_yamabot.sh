#!/bin/bash

OPT=$1

start(){
  cd /home/yu-yamashita/yamabot/lita
  bundle exec lita > lita.log 2>&1 &
}

stop(){
  PID=`ps -ef |grep lita |grep -v grep | awk '{print $2}'`
  kill ${PID}
} 

case ${OPT} in
  "start" ) start ;;
  "stop" ) stop ;;
  "restart" ) stop && start ;;
esac




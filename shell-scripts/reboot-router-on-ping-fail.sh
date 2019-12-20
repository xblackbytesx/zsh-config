#!/bin/bash

CURRENTDATE=`date +"%Y-%m-%d %T"`

touch ./router-reboots.log

if ! ping -c 3 8.8.8.8
then
  ssh nighthawk "reboot"
  echo "${CURRENTDATE}: Issued reboot command" >> ./router-reboots.log
fi

# Possible crontab entry:
# */3 * * * * ~/zsh-config/shell-scripts/reboot-router-on-ping-fail.sh

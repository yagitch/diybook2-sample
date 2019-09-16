#!/bin/bash

AUTO_HOME=/home/pi/auto

case $1 in

  light1)
    if [ -e ${AUTO_HOME}/home.touch ]
    then
      ${AUTO_HOME}/curl.sh hue_1
      ${AUTO_HOME}/curl.sh light_off
    fi
    ;;

  light2)
    if [ -e ${AUTO_HOME}/home.touch ]
    then
      ${AUTO_HOME}/curl.sh hue_2
      ${AUTO_HOME}/curl.sh light_off
    fi
    ;;

  light3)
    if [ -e ${AUTO_HOME}/home.touch ]
    then
      ${AUTO_HOME}/curl.sh light_on
      ${AUTO_HOME}/curl.sh hue_off
    fi
    ;;

  light_off)
    ${AUTO_HOME}/curl.sh light_off
    ${AUTO_HOME}/curl.sh hue_off
    ;;

esac

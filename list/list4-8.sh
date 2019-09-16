#!/bin/bash

AUTO_HOME=/home/pi/auto

case $1 in

  light1)
    ${AUTO_HOME}/curl.sh hue_1
    ${AUTO_HOME}/curl.sh light_off
    ;;

  light2)
    ${AUTO_HOME}/curl.sh hue_2
    ${AUTO_HOME}/curl.sh light_off
    ;;

  light3)
    ${AUTO_HOME}/curl.sh light_on
    ${AUTO_HOME}/curl.sh hue_off
    ;;

  light_off)
    ${AUTO_HOME}/curl.sh light_off
    ${AUTO_HOME}/curl.sh hue_off
    ;;

  shutdown)
    aplay ${AUTO_HOME}/sound/nc32799.wav
    sudo shutdown -h now
    ;;

  alexa_nhk)
    if [ -e ${AUTO_HOME}/home.touch ]
    then
      COMMAND="アレクサ、NHKラジオ第一東京をかけて"
      ${AUTO_HOME}/sound/jtalk.sh "${COMMAND}"
    fi
    ;;

  weather)
    if [ -e ${AUTO_HOME}/home.touch ]
    then
      TEMPERTURE=`${AUTO_HOME}/netatmo/get.sh`
      ${AUTO_HOME}/sound/jtalk.sh "${TEMPERTURE}"
    fi
    ;;

esac


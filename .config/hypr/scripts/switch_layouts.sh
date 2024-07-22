#!/bin/sh

H_LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

case ${H_LAYOUT} in
  "master")
    echo "${H_LAYOUT} -> dwindle"
    hyprctl keyword general:layout dwindle
    ;;
  "dwindle")
    echo "${H_LAYOUT} -> master"
    hyprctl keyword general:layout master
    ;;
  *)
    ;;
esac

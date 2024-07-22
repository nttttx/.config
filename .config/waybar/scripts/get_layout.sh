#!/bin/sh

H_LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

printf ${H_LAYOUT} | tr '[:lower:]' '[:upper:]'

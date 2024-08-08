#!/bin/sh

H_LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

printf ${H_LAYOUT} | awk '{ $1 = toupper(substr($1, 1, 1)) substr($1, 2); print }'


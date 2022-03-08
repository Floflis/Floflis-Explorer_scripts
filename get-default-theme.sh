#!/bin/bash -e

flouser=$(logname)

#if [ "$(echo $XDG_CURRENT_DESKTOP)" = *"GNOME" ]; then
#   gsettings_path="org.gnome.desktop.interface"
#   gsettings_key="icon-theme"
#fi
#- credits: https://itsfoss.com/find-desktop-environment/

if [ "$(echo $XDG_CURRENT_DESKTOP)" = "X-Cinnamon" ]; then
   gsettings_path="org.cinnamon.theme"
   gsettings_key="name"
fi

#gsettings get $gsettings_path $key | tr -d "'"

#echo "$(gsettings get $gsettings_path $key | tr -d "'")"

if [ "$1" = "plain" ]; then
   gsettings get $gsettings_path $gsettings_key | tr -d "'" #- credits: https://stackoverflow.com/a/29788100/5623661
fi

if [ "$1" = "path" ] || [ "$1" = "" ]; then
   echo "/home/$flouser/.themes/$(gsettings get $gsettings_path $gsettings_key | tr -d "'")"
fi

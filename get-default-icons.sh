#!/bin/bash -e

if [ "$(echo $XDG_CURRENT_DESKTOP)" = *"GNOME" ]; then
   gsettings_path="org.gnome.desktop.interface"
   gsettings_key="icon-theme"
fi
#- credits: https://itsfoss.com/find-desktop-environment/

if [ "$(echo $XDG_CURRENT_DESKTOP)" = "X-Cinnamon" ]; then
   gsettings_path="org.cinnamon.desktop.interface"
   gsettings_key="icon-theme"
fi

#gsettings get $gsettings_path $key | tr -d "'"

#echo "$(gsettings get $gsettings_path $key | tr -d "'")"

gsettings get $gsettings_path $gsettings_key | tr -d "'"
#- credits: https://stackoverflow.com/a/29788100/5623661

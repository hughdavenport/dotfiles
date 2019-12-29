#!/bin/sh

# SLiM doesn't do this automatically for some reason, so do this first to get styles in
xrdb -merge ~/.Xresources

# Minimize wpa_gui to tray
wpa_gui -t &

# Start printer applet
system-config-printer-applet &

# Start xautolock
xautolock -corners +-00 -cornerredelay 60 -time 1 -locker ~/bin/xlock &

# Start spideroak
#/opt/SpiderOakONE/lib/SpiderOakONE &
# Start seafile
seafile-applet &

# Start remmina
remmina -i &

# Start redshift
redshift-gtk &

# Start a mixer
pnmixer &

# Start up workrave
workrave &

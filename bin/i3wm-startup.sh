#!/bin/sh

# SLiM doesn't do this automatically for some reason, so do this first to get styles in
xrdb -merge ~/.Xresources

# Minimize wpa_gui to tray
wpa_gui -t &

# Start xautolock
xautolock -corners +-00 -cornerredelay 60 -time 1 &

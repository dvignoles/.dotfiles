#!/bin/sh

# invoke global X session script
#. /etc/X11/Xsession

# Simple X Hotkey Daemon
sxhkd &

# monitor layout and wallpaper
~/.screenlayout/danpc.sh 
nitrogen --restore

# Xresources
xrdb -merge -I$HOME ~/.Xresources

# switch super_L and alt_L
xmodmap -e 'remove mod1 = Alt_L'
xmodmap -e 'remove mod4 = Super_L'
xmodmap -e 'add mod1 = Super_L'
xmodmap -e 'add mod4 = Alt_L'

# launch i3 wrapped in dbus to ensure DBus envi variables set 
# see playerctl github readme 
exec dbus-launch --autolaunch=$(cat /var/lib/dbus/machine-id) i3

#!/bin/bash

function run {
  if ! pgrep $1; then
    $@ &
  fi
}

run sxhkd -c ~/.config/hypr/sxhkd/sxhkdrc &

dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
xsetroot -cursor_name left_ptr &

run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
picom --config $HOME/.config/hypr/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
run volumeicon &
/usr/bin/emacs --daemon &
syncthing &
diary &

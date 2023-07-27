#!/bin/sh

chosen=$(printf "Power Off\nRestart\nLock" | rofi -dmenu -i -theme-str '@import "lock.rasi"')

case "$chosen" in
	"Power Off") poweroff ;;
	"Restart") reboot ;;
	"Lock") slock ;;
*) exit 1;;
esac 

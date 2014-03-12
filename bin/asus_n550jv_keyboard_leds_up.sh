#!/bin/sh

brightness=$(cat "/sys/class/leds/asus::kbd_backlight/brightness")

if [ "$brightness" -lt 3 ]
then
echo $((brightness + 1)) >> /sys/class/leds/asus\:\:kbd_backlight/brightness
fi

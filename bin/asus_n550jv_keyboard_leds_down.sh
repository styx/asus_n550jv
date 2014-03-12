#!/bin/sh

brightness=$(cat "/sys/class/leds/asus::kbd_backlight/brightness")

if [ "$brightness" -gt 0 ]
then
echo $((brightness - 1)) >> /sys/class/leds/asus\:\:kbd_backlight/brightness
fi

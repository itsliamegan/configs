# If an external display is connected, disable the internal display and only
# output on the external one.
if xrandr | grep -q "DP2-1 connected"; then
	xrandr --output eDP1 --off
	xrandr --output DP2-1 --primary --mode 2560x1440
fi

# Enable natural scrolling for the touchpad.
xinput --set-prop "Synaptics TM3053-004" "libinput Natural Scrolling Enabled" 1

. /etc/X11/Xsession

#!/bin/sh

# Provides de-facto wm-stat-pwr support for lemonbar (https://github.com/lemonboy/bar).
#
# To test, run the following in a shell:
# 
# `sh lemonbar.sh | lemonbar`
#
# Copy the function found below over to your own lemonbar config, change the path
# of wm-stat-pwr to wherever you have it stored, and enjoy.

wm-stat-pwr()
{
	script_file="$(../wm-stat-pwr)"
	output_text="$(echo $script_file | awk -F ' ' '{ print $1 " " $2 }')"
	output_color="$(echo $script_file | awk -F ' ' '{ print $3 }')"

	echo "%{F$(echo $output_color)}$output_text"
}

while true
do
	wm-stat-pwr
	sleep 1
done


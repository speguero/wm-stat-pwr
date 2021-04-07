#!/bin/sh

# Provides de-facto baterio support for lemonbar (https://github.com/lemonboy/bar).
#
# To test, run the following in a shell:
# 
# `sh lemonbar.sh | lemonbar`
#
# Copy the function found below over to your own lemonbar config, change the path
# of baterio to wherever you have it stored, and enjoy.

baterio()
{
	script_file="$(../baterio)"
	output_text="$(echo $script_file | awk -F ' ' '{ print $1 " " $2 }')"
	output_color="$(echo $script_file | awk -F ' ' '{ print $3 }')"

	echo "%{F$(echo $output_color)}$output_text"
}

while true
do
	baterio
	sleep 1
done


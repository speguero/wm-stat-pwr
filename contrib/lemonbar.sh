#!/bin/sh

# Provides de-facto wmbattstat support for lemonbar (https://github.com/lemonboy/bar).
#
# To test, run the following in a shell:
# 
# `sh lemonbar.sh | lemonbar`
#
# Copy the function found below over to your own lemonbar config, change the path
# of wmbattstat to wherever you have it stored, and enjoy.

wmbattstat()
{
	script_file="$(../wmbattstat)"
	output_text="$(echo $script_file | awk -F ' ' '{ print $1 " " $2 }')"
	output_color="$(echo $script_file | awk -F ' ' '{ print $3 }')"

	echo "%{F$(echo $output_color)}$output_text"
}

while true
do
	wmbattstat
	sleep 1
done


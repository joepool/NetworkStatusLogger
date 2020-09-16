#!/bin/bash
dir=("/home/pi/networkstatuslog.txt")
while :
do
	now=$(date)
	case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
  	[23]):;;
 	*) echo "The network is down or very slow";output="${now} - Network is Down";echo "$output" >> "$dir";;
	esac
	sleep 30
done
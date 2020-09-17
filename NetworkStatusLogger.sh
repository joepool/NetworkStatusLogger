#!/bin/bash
dir=("/home/pi/networkstatuslog.txt")
while :
do
	now=$(date)
	case "$(curl -s --max-time 5 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
  	[23]):;;
 	*) echo "Network is Down";output="${now} - Network is Down";echo "$output" >> "$dir";;
	esac
	sleep 30
done
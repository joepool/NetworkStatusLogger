#!/bin/bash
dir=("/home/pi/networkstatuslog.txt")
while :
do
	now=$(date)
	ping -c 1 8.8.8.8 > /dev/null 2>&1
	ping=$?
	if [ "$ping" -eq "2" ]
	then
		output="${now} - Network is Down"
		echo "$output" >> "$dir"
		echo Network Down
	fi
	sleep 30
done
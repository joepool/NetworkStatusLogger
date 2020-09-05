#!/bin/bash
dir=("/home/pi/networkstatuslog.txt")
down=("- Network is Down")
while :
do
	now=$(date)
	ping -c 1 8.8.8.8 > /dev/null 2>&1
	ping=$?
	if [ "$ping" -eq "2" ]
	then
		output="${now} ${down}"
		echo $output >> $dir
		echo Network Down
	fi
	sleep 30
done

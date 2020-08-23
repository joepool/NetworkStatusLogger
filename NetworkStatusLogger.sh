#!/bin/bash
dir=$("/home/pi/networkstatuslog.txt")
down=$(": Netowork is Down")
while :
do
	now=$(date)
	echo $now
	ping -c 1 8.8.8.8 > /dev/null 2>&1
	ping=$?
	if [ "$ping" -eq "2" ]
	then
		output="${now} ${down}"
		echo $output >> $dir
		echo Network Down
	else
		echo Network Up
	fi
	sleep 20
done
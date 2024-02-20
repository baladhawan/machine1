#!/bin/bash

# Disk monitoring Script

DISK_SPACE="$(df -H | grep "xvda1 " | awk '{print $5}' | tr -d %)"

if [[ $DISK_SPACE -lt 40 ]]
then
	echo
	echo "***** Disk Utilization Report *****"
	echo
	echo "Disk Utilization is Normal - $DISK_SPACE "
	echo
	echo "******** End Of Report ********"
	echo
else
	echo
        echo "***** Disk Utilization Report *****"
        echo
        echo "Warning Disk will getting full  - $DISK_SPACE "
        echo
        echo "******** End Of Report ********"
        echo
fi



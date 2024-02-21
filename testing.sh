#!/bin/bash

# Script for monitoring Ram memory

FREE="$(free -mt | grep "Total" | awk '{print $4}')"

TH=500

if [[ $FREE -lt $TH ]]
then
        echo "**** Ram Utilization Report ****"
        echo
        echo "Warning Ram Is Running Low - $FREE MB"
        echo
        echo "********** End Of Report **********"
        echo
else
        echo "**** Ram Utilization Report ****"
        echo
        echo "Warning Ram Utilization is OK - $FREE MB"
        echo
        echo "********** End Of Report **********"
        echo
fi

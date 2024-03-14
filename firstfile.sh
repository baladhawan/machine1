#!/bin/bash

read -p "Hello, Can you tell your marks: " marks

if [[ marks -ge 80 ]]
then
	echo "You passed in first class"
elif [[ marks -ge 40 ]]
then
	echo "You passed in second class"
else
	echo "You are failed"
fi


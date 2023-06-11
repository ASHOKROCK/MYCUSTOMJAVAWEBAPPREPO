#!/bin/bash
match=$1  # fileName
found=0   # set to 1 if file found in the for loop

# show usage
[ $# -eq 0 ] && { echo "Usage: $0 fileName"; exit 1; }

# Try to find file in /etc

for f in /root/linux/shellscript/*
do

	if [ "$f" == "$match" ]
	then
	 	echo "$match file found!"
	 	found=1 # file found
		break   # break the for looop
	fi
done

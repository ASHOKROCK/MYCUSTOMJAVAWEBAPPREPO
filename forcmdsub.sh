#!/bin/bash
echo "Printing file names in /tmp directory:"
for f in $(ls /root/*)
do
	echo $f
done

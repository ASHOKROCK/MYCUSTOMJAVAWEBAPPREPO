#!/bin/bash
file=/root/linux/shellscript/num.sh
while IFS= read -r line
do
        # echo line is stored in $line
	echo $line
done < "$file"

#!/bin/bash
file=/root/linux/shellscript/num.sh
while IFS= ' ' read -r f1 f2
do
        # echo line is stored in $line
	#echo $line
        echo "field # 1 : $f1 ==> field #2 : $f2"
done < "$file"

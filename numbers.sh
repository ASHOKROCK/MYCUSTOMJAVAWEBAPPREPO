#!/bin/bash
a=10
b=20
if [[ $a -gt $b ]]
then
 echo "a is greater than b"
elif [[ $a -lt $b ]]
then
  echo "a is not greater than b"
elif [[ $a -le $b ]]
then
  echo "a is less than or equal to b"
elif [[ $a -ge $b ]]
then
  echo "a is greater than or equal to b"
elif [[ $a -ne $b ]]
then
  echo "a is not equal to b"
else
  echo "a is equal to b"
fi

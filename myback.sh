#!/bin/bash
BAK=data
TAPE=/dev/sda2
echo "Trying to backup ${BAK} directory to tape device ${TAPE} .."

# See if $BAK directory exists or not, else die
# Set unsuccessful shell script termination with exit status # 1
[ ! -d $BAK ] && { echo "Source backup directory $BAK not found."; exit 1; }

# See if $TAPE device exists or not, else die
# Set unsuccessful shell script termination with exit status # 2
[ ! -b $TAPE ] && { echo "Backup tape drive $TAPE not found or configured."; exit 2; }

# Okay back it up
tar cvf $TAPE $BAK 2> /tmp/error.log

if [ $? -ne 0 ]
then
   # die with unsuccessful shell script termination exit status # 3
   echo "An error occurred while making a tape backup, see /tmp/error.log file".
   exit 3 
fi

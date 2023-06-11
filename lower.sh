#!/bin/bash
# A shell script to backup mysql, webserver and files to tape
# allinonebackup.sh version 2.0
# -------------------------------------------------------
# covert all passed arguments to lowercase using
# tr command and here strings
opt=$( tr '[:upper:]' '[:lower:]' <<<"$1" )
case $opt in
        sql)
                echo "Running mysql backup using mysqldump tool..."
                ;;
        sync)
                echo "Running backup using rsync tool..."
                ;;
        tar)
                echo "Running tape backup using tar tool..."
                ;;
        *)
        	    echo "Backup shell script utility"
                echo "Usage: $0 {sql|sync|tar}"
                echo "	sql  : Run mySQL backup utility."
                echo "	sync : Run web server backup utility."	
                echo "	tar  : Run tape backup utility."	;;
esac

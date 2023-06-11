#!/bin/bash
# run tar command and dump data to tape
tar -cvf /dev/st0 /www /home 2>/dev/null

# Okay find out if tar was a success or a failure 
[ $? -eq 0 ] && status="Success!" || status="Failed!!!"

# write an email to admin 
mail -s 'Backup status' vivek@nixcraft.co.in<<END_OF_EMAIL

The backup job finished.

End date: $(date)
Hostname : $(hostname)
Status : $status

END_OF_EMAIL

#!/bin/bash
DATE=`date`
echo "$DATE : Clearing 30 days logs file "
find /opt/all_day_logs/ -type f -mtime +30 -exec rm -r {} \;
echo "$DATE : Clearnig 30 days old directory if present"
find /opt/all_day_logs/ -type d -mtime +30 -exec rm -r {} \;

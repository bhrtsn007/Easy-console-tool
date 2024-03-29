#!/bin/bash
echo "Clearing Cache from Server"
sudo /home/gor/easy_console/cache.sh
sleep 1
echo "Making directory in temp"
DIRECTORY=$(date +"%d-%m-%Y-%R")
echo "copy today logs in the folder and making tar for log file"
find /var/log/butler_server/log -type f -mtime -1 | xargs tar -czvPf  /tmp/"$DIRECTORY"_all_logs.tar.gz
echo "Sending tar file to metric server"
scp /tmp/"$DIRECTORY"_all_logs.tar.gz metric:/data/all_day_logs/
echo "removing files from core server"
rm /tmp/"$DIRECTORY"_all_logs.tar.gz
echo "Logs backup can be found in metric server /data/all_day_logs/"$DIRECTORY" directory"


#!/bin/bash
echo "Checking count for disconnection"
COUNT=`sshpass -p "2sMcZ3pdTcp5v" ssh -o StrictHostKeyChecking=no -t gor@172.19.40.46 " grep -rc 'Rejecting new connection' /var/log/butler_server/log/mhs/debug.log"`
echo "$COUNT"
if [[ "$COUNT">50 ]]; then
	echo "Issue is there"
else
	echo "Everything is good"
fi

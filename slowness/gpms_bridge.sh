#!/bin/bash
PASSWORD_OF_BRIDGE="apj0702"
NOW=$(date +"%Y%m%d%H%M%S")
LOGFILE="log-$NOW.log"
echo "please enter Butler core server IP:"  
read core_ip
echo "please enter Bridge server IP:"  
read bridge_server_ip
echo "$bridge_server_ip"
tmux kill-session -t core_to_bridge_2
tmux kill-session -t bridge_to_core_2
tmux kill-session -t icmp_2
tmux new-session -d -s core_to_bridge_2 'sudo tcpdump -s0 -n  -i any  " host '$bridge_server_ip' and port 9996" -w '/home/gor/core_to_bridge2-$NOW.pcap''
tmux new-session -d -s bridge_to_core_2 'sudo tcpdump -s0 -n  -i any  " host '$core_ip' and port 8181" -w '/home/gor/bridge_to_core2-$NOW.pcap''
tmux new-session -d -s icmp_2 'sudo tcpdump -s0 -n  -i any  "icmp" -w '/home/gor/icmp2-$NOW.pcap''


while true; 
do 
	echo "Capturing data packet"
	echo "Enter q/Q for stop"
	read -n 1 -t 1 input                  
   	if [[ $input = "q" ]] || [[ $input = "Q" ]] 
   	then
      	echo ""
      	break
   	fi
	#sleep 1; 

done

echo "###################################################################"
echo "Killing all tmux session on butler core please do the same for bridge server "
echo "###################################################################"
tmux kill-session -t core_to_bridge_2
tmux kill-session -t bridge_to_core_2
tmux kill-session -t icmp_2

#!/bin/bash
PASSWORD_OF_BRIDGE="apj0702"
NOW=$(date +"%Y%m%d%H%M%S")
LOGFILE="log-$NOW.log"
{
echo "please enter Butler core server IP:"  
read core_ip
echo "please enter Bridge server IP:"  
read bridge_server_ip
echo "please enter Interface server IP:" 
read interface_server_ip
echo "please enter Platform core server IP:" 
read platform_core_server_ip
echo "###################################################################"  
echo "HTTP request unsuccessful coming for Bridge"							
echo "###################################################################"  
find /var/log/butler_server/log/pf/ -type f -name 'debug.log*' -mmin -60 -exec grep 'HTTP Request unsuccessful' {} \; | grep "$bridge_server_ip"  

echo "###################################################################" 
echo "HTTP request unsuccessful coming for Interface "                     
echo "###################################################################"
find /var/log/butler_server/log/pf/ -type f -name 'debug.log*' -mmin -60 -exec grep 'HTTP Request unsuccessful' {} \; | grep "$interface_server_ip"

echo "###################################################################"
echo "HTTP request unsuccessful coming for Platform Core"
echo "###################################################################"
find /var/log/butler_server/log/pf/ -type f -name 'debug.log*' -mmin -60 -exec grep 'HTTP Request unsuccessful' {} \; | grep "$platform_core_server_ip"

echo "###################################################################"
echo "More time logging in logs"
echo "###################################################################"
find /var/log/butler_server/log/ -type f -name 'debug.log*' -mmin -60 -exec grep 'More time taken then expected' {} \;

tmux kill-session -t core_to_bridge_1
tmux kill-session -t bridge_to_core_1
tmux kill-session -t icmp_1
tmux new-session -d -s core_to_bridge_1 'sudo tcpdump -s0 -n  -i any  " host '$bridge_server_ip' and port 9996" -w '/home/gor/core_to_bridge1-$NOW.pcap''
tmux new-session -d -s bridge_to_core_1 'sudo tcpdump -s0 -n  -i any  " host '$core_ip' and port 8181" -w '/home/gor/bridge_to_core1-$NOW.pcap''
tmux new-session -d -s icmp_1 'sudo tcpdump -s0 -n  -i any  "icmp" -w '/home/gor/icmp1-$NOW.pcap''

echo "###################################################################"
echo "Start checking wget call time "
echo "###################################################################"
while true; 
do 
	{ time wget http://$bridge_server_ip:9996; } 2>&1 | tee -a /home/gor/$LOGFILE
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

tmux kill-session -t core_to_bridge_1
tmux kill-session -t bridge_to_core_1
tmux kill-session -t icmp_1
} | 2>&1  tee /home/gor/$LOGFILE

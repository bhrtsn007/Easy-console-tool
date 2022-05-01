#!/bin/bash
echo "####################################################################"
echo "Installation Started"
echo "####################################################################"
echo ""
echo ""
sudo rm -r /home/gor/easy_console/maintenance
sudo mv /tmp/maintenance/ /home/gor/easy_console/
echo "making all file executable"
sudo find /home/gor/easy_console/maintenance -type f -iname "*.sh" -exec chmod +x {} \;
sudo find /home/gor/easy_console/maintenance -type f -iname "*.escript" -exec chmod +x {} \;
echo ""
sudo mv /home/gor/easy_console/maintenance/VARIABLE /home/gor/easy_console/
sudo mv /home/gor/easy_console/maintenance/maintenance.log /home/gor/easy_console/
#echo "alias all_server_maintenance='tmux new-session -d -s maintenance "sudo /home/gor/easy_console/maintenance/maintenance_script.sh | tee -a /home/gor/easy_console/maintenance/maintenance.log"'" >> ~/.bashrc
#alias all_server_maintenance='tmux new-session -d -s maintenance "sudo /home/gor/easy_console/maintenance/maintenance_script.sh | tee -a /home/gor/easy_console/maintenance/maintenance.log"'
echo ""
echo "####################################################################"
echo "Installation Completed"
echo "####################################################################"

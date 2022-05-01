#!/bin/bash
hnm_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/hnm/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/hnm/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ hnm_core:/tmp/
        scp /tmp/deploy_easy.sh hnm_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_easy.sh script on server"
        sshpass -p '2sMcZ3pdTcp5v' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.54 "echo 'apj0702' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for HnM"
}
col_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/Columbia/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/Columbia/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ col_core:/tmp/
        scp /tmp/deploy_easy.sh col_core:/tmp/
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.21.3.145 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for Columbia"
}
hul_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/HUL/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/HUL/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ hul_core:/tmp/
        scp /tmp/deploy_easy.sh hul_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_easy.sh script on server"
        sshpass -p 'apj0702' ssh -o StrictHostKeyChecking=no -t gor@192.168.22.10 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for HUL"
}
adidas_deploy(){
    echo "Clearing Old file"
    echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
    echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
    echo "#############################################"
    echo "Making Executable file for Addias"
    echo "#############################################"
    cp -r /home/bharat.s/easy_console/Site_running_file/adidas/cgi-bin /tmp
    cp /home/bharat.s/easy_console/Site_running_file/adidas/deploy_easy.sh /tmp
    sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
    sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
    for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
    echo "#############################################"
    echo "File Ready for Deployment"
    echo "#############################################"
    scp -r /tmp/cgi-bin/ adidas_core:/tmp/
    scp /tmp/deploy_easy.sh adidas_core:/tmp/
    echo "#############################################"
    echo "Deploying Easy console on Adidas"
    echo "#############################################"
    sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.46 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
    echo "Deployment complete for Adidas"
}
goldbond_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/goldbond/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/goldbond/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ goldbond_core:/tmp/
        scp /tmp/deploy_easy.sh goldbond_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_easy.sh script on server"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.16.4.82 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for GOLDBOND"
}
jysk_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/JYSK/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/JYSK/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ jysk_core:/tmp/
        scp /tmp/deploy_easy.sh jysk_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_easy.sh script on server"
        sshpass -p 'XIeXNV1oXAhpcdW54j33' ssh -o StrictHostKeyChecking=no -t gor@10.236.8.41 "echo 'XIeXNV1oXAhpcdW54j33' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for JYSK"
}
mits_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/Mitsubishi/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/Mitsubishi/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ mitsubishi-core-prod:/tmp/
        scp /tmp/deploy_easy.sh mitsubishi-core-prod:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "If not able to reach server execute sudo /tmp/deploy_easy.sh script on server"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.16.11.10 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for Mitsubishi"
}
sbs_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file for SBS"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/SBS/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/SBS/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ sbs_core:/tmp/
        scp /tmp/deploy_easy.sh sbs_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console on SBS"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhmaq' ssh -o StrictHostKeyChecking=no -t gor@10.115.43.20 "echo '46VNZk7zrWhmaq' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for SBS"
}
disney_deploy(){
    echo "Clearing Old file"
    echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
    echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
    echo "#############################################"
    echo "Making Executable file for Disney"
    echo "#############################################"
    cp -r /home/bharat.s/easy_console/Site_running_file/Disney/cgi-bin /tmp
    cp /home/bharat.s/easy_console/Site_running_file/Disney/deploy_easy.sh /tmp
    sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
    sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
    for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
    echo "#############################################"
    echo "File Ready for Deployment"
    echo "#############################################"
    scp -r /tmp/cgi-bin/ disney_core:/tmp/
    scp /tmp/deploy_easy.sh disney_core:/tmp/
    echo "#############################################"
    echo "Deploying Easy console on Disney"
    echo "#############################################"
    sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.29 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
    echo "Deployment complete for Disney"
}
dhl_deploy(){
        echo "Deploying Easy console in DHL"
        scp -r /home/bharat.s/easy_console//DHL/maintenance dhl_core:/tmp/
        echo "File Copy complete for DHL"
}
loreal_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_easy.sh
        echo "#############################################"
        echo "Making Executable file for Loreal"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/Loreal/cgi-bin /tmp
        cp /home/bharat.s/easy_console/Site_running_file/Loreal/deploy_easy.sh /tmp
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/cgi-bin/ loreal_core:/tmp/
        scp /tmp/deploy_easy.sh loreal_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console on Loreal"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.21 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_easy.sh"
        echo "Deployment complete for Loreal"
}
gfc_deploy(){
        echo "Deploying Easy console in GFC"
        scp -r /home/bharat.s/easy_console//GFC/maintenance gor@192.168.9.68:/tmp/
        echo "File Copy complete for GFC"
}
echo "##################################################"
echo "Deployment Started"
echo "##################################################"
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in HUL"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    hul_deploy
fi
echo ""
echo ""
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in Disney"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    disney_deploy
fi
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in DHL"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    dhl_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in SBS"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    sbs_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in Loreal"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    loreal_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in GFC"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    gfc_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in Mitsubishi"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    mits_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in JYSK"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    jysk_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in GOLDBOND"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    goldbond_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in ADIDAS"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    adidas_deploy
fi

echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in Columbia"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    col_deploy
fi

echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in HnM"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    hnm_deploy
fi

echo ""
echo ""
echo ""
echo "###############################################"
echo "Deployment Complete"
echo "###############################################"


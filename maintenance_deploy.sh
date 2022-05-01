#!/bin/bash
hnm_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance hnm_core:/tmp/
        scp /tmp/deploy_maintenance.sh hnm_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_maintenance.sh script on server"
        sshpass -p 'apj0702' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.54 "echo 'apj0702' | sudo -S /tmp/deploy_maintenance.sh"
        echo "Deployment complete for HnM"
}
col_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance col_core:/tmp/
        scp /tmp/deploy_maintenance_old.sh col_core:/tmp/
        scp /tmp/deploy_maintenance_new.sh col_core:/tmp/
        echo "for 1st time deployment press 1 else press 2"
        read ans
        if [ "$ans" -eq "2" ]; then
           echo "#############################################"
           echo "Deploying Easy console on Columbia"
           echo "#############################################"
           sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.21.3.145 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_old.sh"
        elif [ "$ans" -eq "1" ]; then
           echo "#############################################"
           echo "Deploying Easy console on Columbia"
           echo "#############################################"
           sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.21.3.145 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_new.sh"
        fi
        echo "Deployment complete for Columbia"
}
hul_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance hul_core:/tmp/
        scp /tmp/deploy_maintenance_old.sh hul_core:/tmp/
        scp /tmp/deploy_maintenance_new.sh hul_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_maintenance.sh script on server"
        echo "Deployment complete for HUL"
}
adidas_deploy(){
    echo "Clearing Old file"
    echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
    echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
    echo "#############################################"
    echo "Making Executable file for Addias"
    echo "#############################################"
    cp -r /home/bharat.s/easy_console/maintenance_105/maintenance /tmp
    cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
    cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
    sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
    sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
    for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
    echo "#############################################"
    echo "File Ready for Deployment"
    echo "#############################################"
    scp -r /tmp/maintenance adidas_core:/tmp/
    scp /tmp/deploy_maintenance_old.sh adidas_core:/tmp/
    scp /tmp/deploy_maintenance_new.sh adidas_core:/tmp/
    echo "for 1st time deployment press 1 else press 2"
    read ans
    if [ "$ans" -eq "2" ]; then
        echo "#############################################"
        echo "Deploying Easy console on Adidas"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.46 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_old.sh"
    elif [ "$ans" -eq "1" ]; then
        echo "#############################################"
        echo "Deploying Easy console on Adidas"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.46 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_new.sh"
    fi
    echo "Deployment complete for Adidas"
}
goldbond_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance goldbond_core:/tmp/
        scp /tmp/deploy_maintenance.sh goldbond_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_maintenance.sh script on server"
    sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.16.4.82 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance.sh"
        echo "Deployment complete for GOLDBOND"
}
jysk_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance jysk_core:/tmp/
        scp /tmp/deploy_maintenance.sh jysk_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "IF not able to reach server execute sudo /tmp/deploy_maintenance.sh script on server"
        sshpass -p 'XIeXNV1oXAhpcdW54j33' ssh -o StrictHostKeyChecking=no -t gor@10.236.8.41 "echo 'XIeXNV1oXAhpcdW54j33' | sudo -S /tmp/deploy_maintenance.sh"
        echo "Deployment complete for JYSK"
}
mits_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance mitsubishi-core-prod:/tmp/
        scp /tmp/deploy_maintenance_old.sh mitsubishi-core-prod:/tmp/
        scp /tmp/deploy_maintenance_new.sh mitsubishi-core-prod:/tmp/
        echo "#############################################"
        echo "Deploying Easy console"
        echo "#############################################"
        echo "If not able to reach server execute sudo /tmp/deploy_maintenance.sh script on server"
        #sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.16.11.10 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance.sh"
        echo "Deployment complete for Mitsubishi"
}
cont_deploy(){
        echo "Deploying Easy console in Continental"
        scp -r /home/bharat.s/easy_console//Continental/maintenance cont_prod:/tmp/
        echo "File Copy complete for Continental"
}
zalando_deploy(){
        echo "Deploying Easy console in Zalando"
        scp -r /home/bharat.s/easy_console//Zalando/maintenance zal_core:/tmp/
        echo "File Copy complete for Zalando"
}
sbs_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file for SBS"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance sbs_core:/tmp/
        scp /tmp/deploy_maintenance_old.sh sbs_core:/tmp/
        echo "#############################################"
        echo "Deploying Easy console on SBS"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhmaq' ssh -o StrictHostKeyChecking=no -t gor@10.115.43.20 "echo '46VNZk7zrWhmaq' | sudo -S /tmp/deploy_maintenance_old.sh"
        echo "Deployment complete for SBS"
}
disney_deploy(){
    echo "Clearing Old file"
    echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
    echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
    echo "#############################################"
    echo "Making Executable file for Disney"
    echo "#############################################"
    cp -r /home/bharat.s/easy_console/maintenance_105/maintenance /tmp
    cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
    cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
    sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
    sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
    for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
    echo "#############################################"
    echo "File Ready for Deployment"
    echo "#############################################"
    scp -r /tmp/maintenance disney_core:/tmp/
    scp /tmp/deploy_maintenance_old.sh disney_core:/tmp/
    scp /tmp/deploy_maintenance_new.sh disney_core:/tmp/
    echo "for 1st time deployment press 1 else press 2"
    read ans
    if [ "$ans" -eq "2" ]; then
        echo "#############################################"
        echo "Deploying Easy console on Disney"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.29 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_old.sh"
    elif [ "$ans" -eq "1" ]; then
        echo "#############################################"
        echo "Deploying Easy console on Disney"
        echo "#############################################"
        sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.29 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_new.sh"
    fi
    echo "Deployment complete for Disney"
}
homelogi_deploy(){
        echo "Deploying Easy console in Homelogi"
        scp -r /home/bharat.s/easy_console//HL/maintenance homelogi-core:/tmp/
        echo "File Copy complete for Homelogi"
}
daiwa_deploy(){
        echo "Deploying Easy console in Daiwa"
        scp -r /home/bharat.s/easy_console//Daiwa/maintenance daiwa-core:/tmp/
        echo "File Copy complete for Daiwa"
}
dhl_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance dhl_core:/tmp/
        scp /tmp/deploy_maintenance_old.sh dhl_core:/tmp/
        scp /tmp/deploy_maintenance_new.sh dhl_core:/tmp/
        echo "for 1st time deployment press 1 else press 2"
        read ans
        if [ "$ans" -eq "2" ]; then
           echo "#############################################"
           echo "Deploying Easy console on Columbia"
           echo "#############################################"
           sshpass -p '2sMcZ3pdTcp5v' ssh -o StrictHostKeyChecking=no -t gor@35.204.246.78 "echo '2sMcZ3pdTcp5v' | sudo -S /tmp/deploy_maintenance_old.sh"
        elif [ "$ans" -eq "1" ]; then
           echo "#############################################"
           echo "Deploying Easy console on Columbia"
           echo "#############################################"
           sshpass -p '2sMcZ3pdTcp5v' ssh -o StrictHostKeyChecking=no -t gor@35.204.246.78 "echo '2sMcZ3pdTcp5v' | sudo -S /tmp/deploy_maintenance_new.sh"
        fi
        echo "Deployment complete for dhl"
}
sodimac_deploy(){
        echo "Deploying Easy console in Sodimac NSR"
        scp -r /home/bharat.s/easy_console//Sodimac/maintenance sodimac_core:/tmp/
        echo "File Copy complete for Sodimac"
}
loreal_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/maintenance
        echo 'Grey@7890' | sudo -S rm /tmp/deploy_maintenance*
        echo "#############################################"
        echo "Making Executable file for Loreal"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/maintenance /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_old.sh /tmp
        cp /home/bharat.s/easy_console/deploy_maintenance_new.sh /tmp
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        scp -r /tmp/maintenance loreal_core:/tmp/
        scp /tmp/deploy_maintenance_old.sh loreal_core:/tmp/
        scp /tmp/deploy_maintenance_new.sh loreal_core:/tmp/
        echo "for 1st time deployment press 1 else press 2"
        read ans
        if [ "$ans" -eq "2" ]; then
            echo "#############################################"
            echo "Deploying maintenance on Loreal"
            echo "#############################################"
            sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.21 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_old.sh"
        elif [ "$ans" -eq "1" ]; then
            echo "#############################################"
            echo "Deploying Easy console on Loreal"
            echo "#############################################"
            sshpass -p '46VNZk7zrWhm' ssh -o StrictHostKeyChecking=no -t gor@172.19.40.21 "echo '46VNZk7zrWhm' | sudo -S /tmp/deploy_maintenance_new.sh"
        fi
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
echo "Do you want to deploy Easy console in Continental"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    cont_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in Zalando"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    zalando_deploy
fi
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
echo "Do you want to deploy Easy console in Sodimac"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    sodimac_deploy
fi
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in Daiwa"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    daiwa_deploy
fi
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
echo "Do you want to deploy Easy console in Homelogi"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    homelogi_deploy
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


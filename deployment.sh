#!/bin/bash
hul_deploy(){
   echo "Deploying Easy console in HUL"
   scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/HUL/cgi-bin HUL_core:/tmp/
   echo "File Copy complete for HUL"
}

cont_deploy(){
        echo "Deploying Easy console in Continental"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/Continental/cgi-bin cont_prod:/tmp/
        echo "File Copy complete for Continental"
}
zalando_deploy(){
        echo "Deploying Easy console in Zalando"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/Zalando/cgi-bin zal_core:/tmp/
        echo "File Copy complete for Zalando"
}
sbs_deploy(){
        echo "Deploying Easy console in SBS"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/SBS/cgi-bin gor@10.115.43.20:/tmp/
        echo "File Copy complete for SBS"
}
disney_deploy(){
   echo "Deploying Easy console in Disney"
   scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/Disney/cgi-bin disney_core:/tmp/
   echo "File Copy complete for Disney"
}
homelogi_deploy(){
        echo "Deploying Easy console in Homelogi"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/HL/cgi-bin homelogi-core:/tmp/
        echo "File Copy complete for Homelogi"
}
daiwa_deploy(){
        echo "Deploying Easy console in Daiwa"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/Daiwa/cgi-bin daiwa-core:/tmp/
        echo "File Copy complete for Daiwa"
}
dhl_deploy(){
        echo "Deploying Easy console in DHL"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/DHL/cgi-bin dhl_core:/tmp/
        echo "File Copy complete for DHL"
}
sodimac_deploy(){
        echo "Deploying Easy console in Sodimac"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/Sodimac/cgi-bin sodimac_core:/tmp/
        echo "File Copy complete for Sodimac"
}
loreal_deploy(){
        echo "Deploying Easy console in Loreal"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/Loreal/cgi-bin loreal_core:/tmp/
        echo "File Copy complete for loreal"
}
gfc_deploy(){
        echo "Deploying Easy console in GFC"
        scp -r /home/bharat.s/Desktop/easy_console/Site_running_file/GFC/cgi-bin gor@192.168.9.68:/tmp/
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
echo "###############################################"
echo "Deployment Complete"
echo "###############################################"

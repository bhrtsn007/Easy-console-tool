#!/bin/bash
hul_deploy(){
	echo "Getting Easy console from HUL"
	
	scp -r HUL_core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/HUL/
	echo "File Copy complete for HUL"
}

cont_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from Continental"
        rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/Continental/cgi-bin
	scp -r cont_prod:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/Continental/
        echo "File Copy complete for Continental"
}

zalando_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from Zalando"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/Zalando/cgi-bin
        scp -r zal_core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/Zalando/
        echo "File Copy complete for Zalando"
}
sbs_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from SBS"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/SBS/cgi-bin
        scp -r gor@10.115.43.20:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/SBS/
        echo "File Copy complete for SBS"
}
disney_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from Disney"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/Disney/cgi-bin
        scp -r disney_core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/Disney/
        echo "File Copy complete for Disney"
}
homelogi_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from Homelogi"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/HL/cgi-bin
        scp -r homelogi-core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/HL/
        echo "File Copy complete for Homelogi"
}
daiwa_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from Daiwa"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/Daiwa/cgi-bin
        scp -r daiwa-core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/Daiwa/
        echo "File Copy complete for Daiwa"
}
dhl_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from DHL"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/DHL/cgi-bin
        scp -r dhl_core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/DHL/
        echo "File Copy complete for DHL"
}
sodimac_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console from Sodimac"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/Sodimac/cgi-bin
        scp -r sodimac_core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/Sodimac/
        echo "File Copy complete for Sodimac"
}
loreal_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console in loreal"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/Loreal/cgi-bin
        scp -r loreal_core:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/Loreal/
        echo "File Copy complete for Loreal"
}
gfc_deploy(){
	echo "Deleting Old file"
        echo "Getting Easy console in GFC"
	rm -r /home/bharat.s/Desktop/easy_console/Site_running_file/GFC/cgi-bin
        scp -r gor@192.168.9.68:/usr/lib/cgi-bin/ /home/bharat.s/Desktop/easy_console/Site_running_file/GFC/
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

#!/bin/bash

new_site(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm -r /tmp/public_html
        mkdir /tmp/public_html
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/new_site_after_RC_93/cgi-bin /tmp
        cp -a /home/bharat.s/easy_console/Site_running_file/new_site_after_RC_93/public_html/. /tmp/public_html
        rm -rf /tmp/public_html/.git*
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        rm -r /home/bharat.s/Desktop/easy_console/new_site_after_rc93/cgi-bin
        rm -r /home/bharat.s/Desktop/easy_console/new_site_after_rc93/public_html
        mv /tmp/cgi-bin/ /home/bharat.s/Desktop/easy_console/new_site_after_rc93
        mv /tmp/public_html /home/bharat.s/Desktop/easy_console/new_site_after_rc93
        echo "#############################################"
        echo "Moves file to Desktop easy console"
        echo "#############################################"
}

simulation_deploy(){
        echo "Clearing Old file"
        echo 'Grey@7890' | sudo -S rm -r /tmp/cgi-bin
        echo 'Grey@7890' | sudo -S rm -r /tmp/public_html
        mkdir /tmp/public_html
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -r /home/bharat.s/easy_console/Site_running_file/simulation/cgi-bin /tmp
        cp -a /home/bharat.s/easy_console/Site_running_file/simulation/public_html/. /tmp/public_html
        rm -rf /tmp/public_html/.git*
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/cgi-bin/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/cgi-bin/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        rm -r /home/bharat.s/Desktop/easy_console/simulation/cgi-bin
        rm -r /home/bharat.s/Desktop/easy_console/simulation/public_html
        mv /tmp/cgi-bin/ /home/bharat.s/Desktop/easy_console/simulation
        mv /tmp/public_html /home/bharat.s/Desktop/easy_console/simulation
        echo "#############################################"
        echo "Moves file to Desktop easy console"
        echo "#############################################"
}

echo "##################################################"
echo "Deployment Started"
echo "##################################################"
echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console for simulation"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    simulation_deploy
fi

echo ""
echo ""
echo ""
echo "Do you want to deploy Easy console in new site after 93"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    new_site
fi
echo ""
echo ""
echo ""
echo "###############################################"
echo "Deployment Complete"
echo "###############################################"

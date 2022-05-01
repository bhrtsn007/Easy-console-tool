#!/bin/bash
main_93(){
        echo "Clearing Old file"
        echo 'Grey@@12345' | sudo -S rm -r /tmp/maintenance_93
        mkdir /tmp/maintenance_93
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -a /home/bharat.s/easy_console/maintenance_93/. /tmp/maintenance_93
        rm -rf /tmp/maintenance_93/.git*
        sudo find /tmp/maintenance_93/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance_93/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance_93/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        rm /home/bharat.s/Desktop/easy_console/maintenance_93/*
        cp -a /tmp/maintenance_93/. /home/bharat.s/Desktop/easy_console/maintenance_93
        echo "#############################################"
        echo "Moves file to Desktop easy console"
        echo "#############################################"
}
main_105(){
       echo "Clearing Old file"
        echo 'Grey@@12345' | sudo -S rm -r /tmp/maintenance_105
        mkdir /tmp/maintenance_105
        echo "#############################################"
        echo "Making Executable file"
        echo "#############################################"
        cp -a /home/bharat.s/easy_console/maintenance_105/. /tmp/maintenance_105
        rm -rf /tmp/maintenance_105/.git*
        sudo find /tmp/maintenance_105/ -type f -iname "*.sh" -exec shc -r -f  {} \;
        sudo find /tmp/maintenance_105/ -type f -iname "*.sh" -exec rm  {} \;
        for oldName in `find /tmp/maintenance_105/ -type f -iname "*.sh.x"`; do newName=`echo $oldName | rev | cut -f2- -d'.' | rev`; mv $oldName $newName; done
        echo "#############################################"
        echo "File Ready for Deployment"
        echo "#############################################"
        rm /home/bharat.s/Desktop/easy_console/maintenance_105/*
        cp -a /tmp/maintenance_105/. /home/bharat.s/Desktop/easy_console/maintenance_105
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
echo "RC-93 file encryption"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    main_93
fi
echo ""
echo ""
echo ""
echo ""
echo ""
echo "RC-105 file encryption"
echo "Press 1 for continue or Press 2 for Skip"
read ans
if [ "$ans" -eq "1" ]; then
    main_105
fi


#!/bin/bash
# Author Josh Bell jbbe@umich.edu
# Adapted from thanuj10/Nokia-Debloater
# This script will debloat your Nokia device(s) off all the unwanted evenwell apps/overlays."


adb devices | grep "\<device\>" 1>/dev/null 2>&1

if [ $? -ne 0 ]; then
    set -e
    printf "No android device discovered\n"
    echo "In order to use this script attach and unlock a phone running the android operating system."
    echo "If your phone is connected make sure adb is installed on your computer, developer options are enabled on your phone"
    echo "And that you have allowed debugging from this computer."
    exit 1
fi

printf  " ==== Menu ==== \n"
echo  "[0] Debloat"
echo  "[1] Rebloat"
echo  "[2] Disable Duraspeed"
echo  "[3] Perform App Optimization Job"
echo  "[4] Exit"
read -r -p "Enter your option: " choice


# :Debloat 
case $choice in
0 ) 
clear

printf "\n\n"
printf "The debloating process will now start. Please be patient.\n\n"
echo "While this script deletes most of the evenwell apps, Some of them will still"
printf "be in the system. Mostly because they seem important.\n"
echo.
printf "WARNING! By using this script, You hereby agree you are responsible for any"
printf "damage that may occur to your phone. I, the author will absolutely under no"
printf "circumstances take responsibilty if you manage to brick your phone.\n"

sleep 
read -r -p "Enter [y] to continue and any other key to cancel " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])$ ]]
then
echo "Beginning to debloat"
adb devices
adb shell pm uninstall --user 0 com.evenwell.DbgCfgTool
adb shell pm uninstall --user 0 com.evenwell.DbgCfgTool.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.DbgCfgTool.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.pushagent
adb shell pm uninstall --user 0 com.evenwell.pushagent.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.pushagent.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.partnerbrowsercustomizations
adb shell pm uninstall --user 0 com.evenwell.partnerbrowsercustomizations.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.partnerbrowsercustomizations.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.retaildemoapp
adb shell pm uninstall --user 0 com.evenwell.retaildemoapp.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.retaildemoapp.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.PowerMonitor
adb shell pm uninstall --user 0 com.evenwell.PowerMonitor.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.PowerMonitor.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.telecom.data.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.telecom.data.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.nps
adb shell pm uninstall --user 0 com.evenwell.nps.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.nps.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.stbmonitor
adb shell pm uninstall --user 0 com.evenwell.stbmonitor.data.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.stbmonitor.data.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.stbmonitor.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.autoregistration
adb shell pm uninstall --user 0 com.evenwell.autoregistration.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.autoregistration.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.batteryprotect
adb shell pm uninstall --user 0 com.evenwell.batteryprotect.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.batteryprotect.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.dataagent
adb shell pm uninstall --user 0 com.evenwell.dataagent.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.dataagent.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.powersaving.g3
adb shell pm uninstall --user 0 com.evenwell.powersaving.g3.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.powersaving.g3.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.custmanager
adb shell pm uninstall --user 0 com.evenwell.custmanager.data.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.custmanager.data.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.CPClient
adb shell pm uninstall --user 0 com.evenwell.CPClient.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.CPClient.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.AprUploadService
adb shell pm uninstall --user 0 com.evenwell.AprUploadService.data.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.AprUploadService.data.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.pushagent
adb shell pm uninstall --user 0 com.evenwell.pushagent.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.pushagent.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.managedprovisioning
adb shell pm uninstall --user 0 com.evenwell.managedprovisioning.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.managedprovisioning.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.DeviceMonitorControl
adb shell pm uninstall --user 0 com.evenwell.DeviceMonitorControl.data.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.DeviceMonitorControl.data.overlay.base.s600id
adb shell pm uninstall --user 0 com.evenwell.PowerMonitor.overlay.base
adb shell pm uninstall --user 0 com.evenwell.autoregistration.overlay.d.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.autoregistration.overlay.d.base.s600id
adb shell pm uninstall --user 0 com.evenwell.nps.overlay.base
adb shell pm uninstall --user 0 com.evenwell.AprUploadService.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.partnerbrowsercustomizations.overlay.base
adb shell pm uninstall --user 0 com.evenwell.telecom.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.custmanager.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.stbmonitor.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.retaildemoapp.overlay.base
adb shell pm uninstall --user 0 com.evenwell.CPClient.overlay.base
adb shell pm uninstall --user 0 com.evenwell.DeviceMonitorControl.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.DbgCfgTool.overlay.base
adb shell pm uninstall --user 0 com.evenwell.batteryprotect.overlay.base
adb shell pm uninstall --user 0 com.evenwell.dataagent.overlay.base
adb shell pm uninstall --user 0 com.evenwell.mappartner
adb shell pm uninstall --user 0 com.evenwell.pushagent.overlay.base
adb shell pm uninstall --user 0 com.evenwell.managedprovisioning.overlay.base
adb shell pm uninstall --user 0 com.evenwell.autoregistration.overlay.base
adb shell pm uninstall --user 0 com.evenwell.pandorasbox.app
adb shell pm uninstall --user 0 com.evenwell.pandorasbox
adb shell pm uninstall --user 0 com.evenwell.UsageStatsLogReceiver.data.overlay.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.UsageStatsLogReceiver.data.overlay.back.s600id
adb shell pm uninstall --user 0 com.evenwell.UsageStatsLogReceiver
adb shell pm uninstall --user 0 com.evenwell.batteryprotect.overlay.d.base.s600e0
adb shell pm uninstall --user 0 com.evenwell.powersaving.g3.overlay.d.base.s600e0
adb shell pm uninstall --user 0 com.evenwell.whitebalance
adb shell pm uninstall --user 0 com.evenwell.whitebalance.overlay.base
adb shell pm uninstall --user 0 com.evenwell.fqc
adb shell pm uninstall --user 0 com.evenwell.SetupWizard
adb shell pm uninstall --user 0 com.evenwell.SetupWizard.overlay.d.base.s600ww
adb shell pm uninstall --user 0 com.evenwell.factorywizard
adb shell pm uninstall --user 0 com.evenwell.factorywizard.overlay.base
adb shell pm uninstall --user 0 com.evenwell.foxlauncher.partner
adb shell pm uninstall --user 0 com.hmdglobal.datago
adb shell pm uninstall --user 0 com.hmdglobal.datago.overlay.base
adb shell pm uninstall --user 0 com.evenwell.phone.overlay.base
adb shell pm uninstall --user 0 com.evenwell.settings.data.overlay.base
adb shell pm uninstall --user 0 com.evenwell.SetupWizard.overlay.base
adb shell pm uninstall --user 0 com.gti.qualcomm.datastatusnotification
adb shell pm uninstall --user 0 com.evenwell.powersaving.g3.overlay.d.base.s600id
adb shell pm uninstall --user 0 com.evenwell.powersaving.g3.overlay.base
adb shell pm uninstall --user 0 com.evenwell.batteryprotect.overlay.d.base.s600id
adb shell pm uninstall --user 0 com.evenwell.nps.overlay.d.base.s600id


printf "\nThe debloating is now finished. Press any key to reboot your phone."
printf "Rebooting Phone... \n"
adb reboot
exit

else
    exit
fi
;;

# :Rebloat
1 )
clear
printf "Reinstalling all the debloated apps now. \n"

adb devices
adb shell cmd install-existing --user 0 com.evenwell.DbgCfgTool
adb shell cmd install-existing --user 0 com.evenwell.DbgCfgTool.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.DbgCfgTool.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.pushagent
adb shell cmd install-existing --user 0 com.evenwell.pushagent.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.pushagent.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.partnerbrowsercustomizations
adb shell cmd install-existing --user 0 com.evenwell.partnerbrowsercustomizations.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.partnerbrowsercustomizations.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.retaildemoapp
adb shell cmd install-existing --user 0 com.evenwell.retaildemoapp.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.retaildemoapp.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.PowerMonitor
adb shell cmd install-existing --user 0 com.evenwell.PowerMonitor.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.PowerMonitor.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.telecom.data.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.telecom.data.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.nps
adb shell cmd install-existing --user 0 com.evenwell.nps.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.nps.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.stbmonitor
adb shell cmd install-existing --user 0 com.evenwell.stbmonitor.data.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.stbmonitor.data.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.stbmonitor.data.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.autoregistration
adb shell cmd install-existing --user 0 com.evenwell.autoregistration.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.autoregistration.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.batteryprotect
adb shell cmd install-existing --user 0 com.evenwell.batteryprotect.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.batteryprotect.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.dataagent
adb shell cmd install-existing --user 0 com.evenwell.dataagent.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.dataagent.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.powersaving.g3
adb shell cmd install-existing --user 0 com.evenwell.powersaving.g3.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.powersaving.g3.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.custmanager
adb shell cmd install-existing --user 0 com.evenwell.custmanager.data.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.custmanager.data.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.CPClient
adb shell cmd install-existing --user 0 com.evenwell.CPClient.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.CPClient.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.AprUploadService
adb shell cmd install-existing --user 0 com.evenwell.AprUploadService.data.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.AprUploadService.data.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.pushagent
adb shell cmd install-existing --user 0 com.evenwell.pushagent.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.pushagent.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.managedprovisioning
adb shell cmd install-existing --user 0 com.evenwell.managedprovisioning.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.managedprovisioning.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.DeviceMonitorControl
adb shell cmd install-existing --user 0 com.evenwell.DeviceMonitorControl.data.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.DeviceMonitorControl.data.overlay.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.PowerMonitor.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.autoregistration.overlay.d.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.autoregistration.overlay.d.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.nps.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.AprUploadService.data.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.partnerbrowsercustomizations.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.telecom.data.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.custmanager.data.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.stbmonitor.data.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.retaildemoapp.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.CPClient.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.DeviceMonitorControl.data.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.DbgCfgTool.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.batteryprotect.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.dataagent.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.mappartner
adb shell cmd install-existing --user 0 com.evenwell.pushagent.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.managedprovisioning.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.autoregistration.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.pandorasbox.app
adb shell cmd install-existing --user 0 com.evenwell.pandorasbox
adb shell cmd install-existing --user 0 com.evenwell.UsageStatsLogReceiver.data.overlay.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.UsageStatsLogReceiver.data.overlay.back.s600id
adb shell cmd install-existing --user 0 com.evenwell.UsageStatsLogReceiver
adb shell cmd install-existing --user 0 com.evenwell.powersaving.g3.overlay.d.base.s600e0
adb shell cmd install-existing --user 0 com.evenwell.batteryprotect.overlay.d.base.s600e0
adb shell cmd install-existing --user 0 com.evenwell.whitebalance
adb shell cmd install-exitsing --user 0 com.evenwell.whitebalance.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.SetupWizard
adb shell cmd install-existing --user 0 com.evenwell.SetupWizard.overlay.d.base.s600ww
adb shell cmd install-existing --user 0 com.evenwell.fqc
adb shell cmd install-existing --user 0 com.evenwell.factorywizard
adb shell cmd install-existing --user 0 com.evenwell.factorywizard.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.foxlauncher.partner
adb shell cmd install-existing --user 0 com.hmdglobal.datago
adb shell cmd install-existing --user 0 com.hmdglobal.datago.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.phone.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.settings.overlay.data.base
adb shell cmd install-existing --user 0 com.evenwell.SetupWizard.overlay.base
adb shell cmd install-existing --user 0 com.qti.qualcomm.datastatusnotification
adb shell cmd install-existing --user 0 com.evenwell.powersaving.g3.overlay.d.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.powersaving.g3.overlay.base
adb shell cmd install-existing --user 0 com.evenwell.batteryprotect.overlay.d.base.s600id
adb shell cmd install-existing --user 0 com.evenwell.nps.overlay.d.base.s600id


printf "\n\n"
printf "The rebloating process is now finished. Press any key to reboot your phone. \n"
echo "Your phone is rebooting..."
adb shell reboot
printf "\n\n"
exit
;;

# :Disable Duraspeed
2 )
clear
printf "\nDuraspeed will now be disabled, Please don't restart your phone.\n"
adb devices
adb shell settings put global setting.duraspeed.enabled 0

printf "Duraspeed is now disabled. Everytime you restart your phone, Please open the script back up and run this command. \n"
exit
;;

# :Dexopt
3 )
clear
printf "\n Beginning app optipimization. Please do not plug out or disconnect your phone until you see the message 'Success' on your screen. \n"
printf "The more apps you have the longer it will take to optimize. This process will take a few minutes... \n"

adb devices
adb shell cmd package bg-dexopt-job
exit
;;

4 )
# :Exit
printf "Okay bye.\n" 
exit
;;

esac
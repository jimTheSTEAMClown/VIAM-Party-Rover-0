#! /bin/bash
# https://docs.viam.com/installation/#detailed-installation-instructions
cd 
pwd
echo "-------------------------------------------------------"
echo " update & upgrade "
echo "-------------------------------------------------------"
sudo apt update
sudo apt upgrade -y
echo "-------------------------------------------------------"
echo " Installing curl"
echo "-------------------------------------------------------"
sudo apt install curl -y
echo "-------------------------------------------------------"
echo "The UPGRADE will say:"
echo "   The following package was automatically installed"
RED_FG=`tput setaf 1`
GREEN_BG=`tput setab 2`
RESET=`tput sgr0`
echo "    ${RED_FG}${GREEN_BG}and is no longer required: libfuse${RESET}"
echo "    ${RED_FG}${GREEN_BG}and to use: 'sudo apt autoremove' to remove it.${RESET}"
echo "${RED_FG}DO NOT DO REMOVE IT.${RESET}  Looks like viam-server needs it"
echo "-------------------------------------------------------"
uname -m
echo "-------------------------------------------------------"
echo " Installing libfuse2"
echo "-------------------------------------------------------"
sudo apt install libfuse2 -y

echo "-------------------------------------------------------"
echo " Setting up the vial-server - this service will run on bootup."
echo "-------------------------------------------------------"
sudo curl -H "key_id:c4446458-c734-4c3a-b210-f63b118853fa" -H "key:mo5viwfzseg3wkp23fpy0ci73lroqznd" "https://app.viam.com/api/json1/config?id=a4d1fc84-19c3-4286-9fec-1d09113da90a&client=true" -o /etc/viam.json
curl https://storage.googleapis.com/packages.viam.com/apps/viam-server/viam-server-stable-aarch64.AppImage -o viam-server && chmod 755 viam-server && sudo ./viam-server --aix-install
echo "-------------------------------------------------------"
echo " Starting the viam-server"
echo "-------------------------------------------------------"
sudo systemctl start viam-server
echo "Done"

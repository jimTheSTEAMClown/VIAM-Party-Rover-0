#1 /bin/bash
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
uname -m
echo "-------------------------------------------------------"
echo " Setting up the vial-server - this service will run on bootup."
echo "-------------------------------------------------------"
curl http://packages.viam.com/apps/viam-server/viam-server-stable-aarch64.AppImage -o viam-server &&
  chmod 755 viam-server && sudo ./viam-server --aix-install
echo "-------------------------------------------------------"
echo " Starting the viam-server"
echo "-------------------------------------------------------"
sudo systemctl start viam-server
echo "Done"

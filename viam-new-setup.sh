#1 /bin/bash
# https://docs.viam.com/installation/#detailed-installation-instructions
cd 
pwd
sudo apt update
sudo apt upgrade -y
sudo apt install curl -y
curl http://packages.viam.com/apps/viam-server/viam-server-stable-aarch64.AppImage -o viam-server &&
  chmod 755 viam-server && sudo ./viam-server --aix-install
 curl http://packages.viam.com/apps/viam-server/viam-server-latest-aarch64.AppImage -o viam-server &&
  chmod 755 viam-server && sudo ./viam-server --aix-install
  echo "-------------------------------------------------------"
  echo " put the start viam-server command here"
  echo "-------------------------------------------------------"

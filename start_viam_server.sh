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
echo " ___  ____   __    ____  ____  ____  _  _  ___                   
echo " / __)(_  _) /__\  (  _ \(_  _)(_  _)( \( )/ __)                     "
echo " \__ \  )(  /(__)\  )   /  )(   _)(_  )  (( (_-.                     " 
echo " (___/ (__)(__)(__)(_)\_) (__) (____)(_)\_)\___/                     "
echo "  _  _  ____    __    __  __    ___  ____  ____  _  _  ____  ____    "
echo " ( \/ )(_  _)  /__\  (  \/  )  / __)( ___)(  _ \( \/ )( ___)(  _ \   "
echo "  \  /  _)(_  /(__)\  )    (   \__ \ )__)  )   / \  /  )__)  )   /   "
echo "   \/  (____)(__)(__)(_/\/\_)  (___/(____)(_)\_)  \/  (____)(_)\_)   "
uname -m
echo "-------------------------------------------------------"
echo " Setting up the vial-server - this service will run on bootup."
echo "-------------------------------------------------------"
# curl http://packages.viam.com/apps/viam-server/viam-server-stable-aarch64.AppImage -o viam-server &&
# chmod 755 viam-server && sudo ./viam-server --aix-install
echo "-------------------------------------------------------"
echo " Starting the viam-server"
echo "-------------------------------------------------------"
sudo systemctl start viam-server
echo "Done"

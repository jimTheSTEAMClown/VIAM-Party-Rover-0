#! /bin/bash
# ============================================================================
# shell script to log a Raspberry Pi Rover Image
# Source: STEAM Clown - www.steamclown.org 
# GitHub: https://github.com/jimTheSTEAMClown/VIAM-Party-Rover-0
# Hacker: Jim Burnham - STEAM Clown, Engineer, Maker, Propmaster & Adrenologist 
# This example code is licensed under the CC BY-NC-SA 4.0, GNU GPL and EUPL
# https://creativecommons.org/licenses/by-nc-sa/4.0/
# https://www.gnu.org/licenses/gpl-3.0.en.html
# https://eupl.eu/
# Program/Design Name:		RoverStatusLog.sh
# Description: shell script to log a Raspberry Pi Rover Image.  The plan is to 
#              have it run some Bash commands and other pythong code to log a 
#              Rover OS configuration, Hardware, like the Processor, and other 
#              features and verify what tools and apps are installed.
# Dependencies:  Raspbian 64 bit OS 
# Revision: 
#  
#  Revision 0.02 - Updated 05/18/2025 for SVCTE Mechatronics Class
#  Revision 0.01 - Created 05/18/2025 (Copied from other Linux build scripts)
# Additional Comments: 
# 
# ============================================================================
echo "----------------------------------------------------"
echo "Shell script to log a Raspberry Pi Rover OS & Hardware Image & VIAM status, Tools & Apps" 
echo "----------------------------------------------------"
echo " "
pwd
echo " "
echo "----------------------------------------------------"
echo "Do you wish run the Rover Status Script?"
echo "This script will run the following: "
echo "  Test if there is a rover direcory, creat it if no, and cd to the rover direcory, then "
echo "  create a rover_log direcoty, and log the bach and other commands and scripts to a file "
echo "  called rover.log "
echo "---------------------"
echo "  List all the stuffs "
# echo "  sudo apt update "
# echo "  sudo apt upgrade -y "
# echo "  sudo lscpu "

echo "----------------------------------------------------"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) 
            echo "----------------------------------------------------"
            echo "Running Rover Log Collection" 
            echo "----------------------------------------------------"
            break;;
        No ) 
            echo "----------------------------------------------------"
            echo "Exiting Without Update" 
            echo "----------------------------------------------------"
            exit;;
    esac
done
# https://docs.viam.com/installation/#detailed-installation-instructions
cd 
pwd
echo "-------------------------------------------------------"
echo " Uncomment to run update & upgrade "
echo "-------------------------------------------------------"
# sudo apt update
# sudo apt upgrade -y
echo "-------------------------------------------------------"
echo " Checking for Rover Dir in $USER home "
echo "-------------------------------------------------------"
# sudo mkdir rover
# cd rover
# sudo mkdir rover_log
# cd rover_log
echo "-------------------------------------------------------"

echo "----------------------------------------------------"
echo "open rover_log.log and log date and time"
echo "----------------------------------------------------"
echo " "
# test if log file is there
# mv rover_log.log rover_log.bac.log
sudo touch rover_log.log
echo " "
echo "----------------------------------------------------"
echo "Done Testing For &/or creating the rover_log.log file "
echo "----------------------------------------------------"
echo " "

echo "----------------------------------------------------"
echo "Getting the date & time" | sudo tee -a rover_log.log
echo "----------------------------------------------------" | sudo tee -a rover_log.log
echo " "
sudo date | sudo tee -a rover_log.log
echo " "
echo "----------------------------------------------------" | sudo tee -a rover_log.log
echo "Done getting date & time" | sudo tee -a rover_log.log
echo " " | sudo tee -a rover_log.log


echo "-------------------------------------------------------"
echo " ___    __  _  _  ___ "
echo "(   \  /  \( \( )(  _)"
echo " ) ) )( () ))  (  ) _)"
echo "(___/  \__/(_)\_)(___)"
echo "All Done"
echo " "
echo "----------------------------------------------------"
echo "  _  _  ____  _  _  ____    ___  ____  ____  ____  ___ "
echo " ( \( )( ___)( \/ )(_  _)  / __)(_  _)( ___)(  _ \/ __) "
echo "  )  (  )__)  )  (   )(    \__ \  )(   )__)  )___/\__ \ "
echo " (_)\_)(____)(_/\_) (__)   (___/ (__) (____)(__)  (___/ "
echo " "
echo "List of next steps: "
echo " - Now you will need to set up the vial-server from your FLEET Page on the VIAM site https://app.viam.com/robots"
echo " - Then, maybe run this .sh file ./start_viam_server.sh"
echo "-------------------------------------------------------"

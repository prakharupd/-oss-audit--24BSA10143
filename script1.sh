#!/bin/bash
STUDENT_NAME="Prakhar"
SOFTWARE_CHOICE="Git" # Fill in your chosen software
# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# --- Display ---
echo "================================"
echo " Open Source Audit — $Prakhar_Upadhyay"
echo "================================"
echo "Kernel : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date: $(date)"
echo "Distro: $(lsb_release -d | cut -f2)"
# TODO: Add distro name, date, and license message

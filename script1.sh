#!/bin/bash

STUDENT_NAME="Akshat"
SOFTWARE="Git"

echo "===== Open Source Audit ====="
echo "Name: $STUDENT_NAME"
echo "Software: $SOFTWARE"

echo "Kernel: $(uname -r)"
echo "User: $(whoami)"
echo "Uptime: $(uptime -p)"
echo "Date: $(date)"
echo "Distro: $(lsb_release -d | cut -f2)"

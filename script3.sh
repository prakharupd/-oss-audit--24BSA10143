#!/bin/bash
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: ${SIZE:-0}"
    else
        echo "$DIR does not exist on this system"
    fi
done
CONFIG_DIR="/etc/gitconfig" 

echo -e "\nSpecific Software Audit:"
echo "----------------------"

if [ -e "$CONFIG_DIR" ]; then
    echo "Found config at: $CONFIG_DIR"
    ls -ld "$CONFIG_DIR" | awk '{print "Permissions: " $1 " | Owner: " $3}'
else
    echo "Configuration directory $CONFIG_DIR not found."
fi

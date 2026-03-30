#!/bin/bash
PACKAGE="git" 
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    httpd) 
        echo "Apache: the web server that built the open internet" ;;
    git) 
        echo "Git: everything is local, distributed versioning at its finest" ;;
    *) 
        echo "Unknown package: No philosophy note available for $PACKAGE" ;;
esac

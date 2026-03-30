#!/bin/bash

PACKAGE="git"

if rpm -q | grep -q $PACKAGE; then
  echo "$PACKAGE is installed"
  dpkg -s $PACKAGE | grep -E 'Version|Description|Maintainer'
else
  echo "$PACKAGE is not installed"
fi

case $PACKAGE in
  git) echo "Git: A distributed version control system used worldwide" ;;
  mysql) echo "MySQL: Open source at the heart of millions of apps";;
  *) echo "Unknown package" ;;
esac

#!/bin/bash

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
  echo "$PACKAGE is installed"
  dpkg -s $PACKAGE | grep -E 'Version|Description|Maintainer'
else
  echo "$PACKAGE is not installed"
fi

case $PACKAGE in
  git) echo "Git: A distributed version control system used worldwide" ;;
  *) echo "Unknown package" ;;
esac

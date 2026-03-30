#!/bin/bash

echo "===== Open Source Manifesto Generator ====="
echo ""

read -p "1. Name one open-source tool you use: " TOOL
read -p "2. What does freedom mean to you (one word)? " FREEDOM
read -p "3. What will you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "On $DATE, I declare my belief in open source." > $OUTPUT
echo "I use $TOOL and believe in $FREEDOM." >> $OUTPUT
echo "I will contribute by building $BUILD and sharing it freely." >> $OUTPUT
echo "Knowledge should be open, accessible, and collaborative." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "---------"
cat $OUTPUT

]#!/bin/bash
# Script 5: Open Source Manifesto Generator
echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
echo "--- Open Source Manifesto ---" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "In the world of technology, $TOOL is my essential companion." >> "$OUTPUT"
echo "To me, open source represents $FREEDOM in its purest form." >> "$OUTPUT"
echo "Guided by these values, I pledge to build $BUILD and share it with the world." >> "$OUTPUT"
echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------"
cat "$OUTPUT"

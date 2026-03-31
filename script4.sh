#!/bin/bash
# Script 4: Log File Analyzer
LOGFILE=$1
KEYWORD=${2:-"error"}  # Default keyword is 'error'
COUNT=0
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi
while true; do
    if [ ! -s "$LOGFILE" ]; then
        echo "File is empty. Retrying in 3 seconds..."
        sleep 3
    else
        echo "File contains data. Proceeding..."
        break
    fi
done
while IFS= read -r LINE; do
    # -i (ignore case), -q (quiet/don't print)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo "---------------------------------------"
echo "Last 5 matches for '$KEYWORD':"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

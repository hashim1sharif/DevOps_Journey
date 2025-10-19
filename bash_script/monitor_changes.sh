#!/bin/bash

# Directory to monitor - change this to your target directory
DIR_TO_WATCH="./"

# Log file to record changes
LOGFILE="directory_changes.log"

# Check if inotifywait is installed
if ! command -v inotifywait &>/dev/null; then
    echo "Error: inotifywait is not installed. Please install inotify-tools."
    exit 1
fi

echo "Monitoring directory '$DIR_TO_WATCH' for changes..."
echo "Logging to $LOGFILE"

# Infinite loop to keep monitoring
inotifywait -m -r -e create -e modify -e delete --format '%T %w %e %f' --timefmt '%Y-%m-%d %H:%M:%S' "$DIR_TO_WATCH" |
while read -r timestamp dir events filename; do
    echo "[$timestamp] $events: $dir$filename" >> "$LOGFILE"
done


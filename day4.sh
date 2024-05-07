#!/bin/bash

process_name="$1"

# Check if a process name is provided as an argument
if [ -z "$process_name" ]; then
    echo "Usage: $0 <process_name>"
    exit 1
fi

max_attempts=3
attempt=1

# Loop to check and restart the process
while [ $attempt -le $max_attempts ]; do
    if pgrep -x "$process_name" >/dev/null; then
        echo "Process $process_name is running."
        exit 0  # Exit successfully if the process is running
    else
        echo "Process $process_name is not running. Attempting to restart..."
        # Check if the user has the privilege to restart the process
        if sudo systemctl restart "$process_name"; then
            echo "Process $process_name restarted successfully."
            exit 0  # Exit successfully after restarting the process
        else
            echo "Failed to restart $process_name."
        fi
    fi

    attempt=$((attempt + 1))
    sleep 5  # Wait for 5 seconds before the next check
done

echo "Maximum restart attempts reached. Please check the process manually."

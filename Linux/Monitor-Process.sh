#!/bin/bash
# Script: Monitor-Process.sh
# Description: Checks if a process is running; if not, it sends an alert.
# Author: SysCommand
# Usage: ./Monitor-Process.sh <process_name>

PROCESS=$1

if pgrep "$PROCESS" > /dev/null
then
    echo "✅ Process '$PROCESS' is running."
else
    echo "⚠️ Process '$PROCESS' is NOT running!"
    # Example: Send mail or log the event here
fi

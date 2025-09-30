#!/bin/bash
# Script: Check-DiskUsage.sh
# Description: Displays disk usage of all mounted filesystems.
# Author: SysCommand
# Usage: ./Check-DiskUsage.sh

echo "==== Disk Usage Report ===="
df -h | awk '{print $1, $2, $3, $4, $5, $6}'

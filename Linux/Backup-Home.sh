#!/bin/bash
# Script: Backup-Home.sh
# Description: Creates a compressed backup of the user's home directory.
# Author: SysCommand
# Usage: ./Backup-Home.sh

BACKUP_FILE="$HOME/home-backup-$(date +%Y%m%d).tar.gz"
tar -czvf "$BACKUP_FILE" "$HOME"

echo "✅ Backup created at: $BACKUP_FILE"

<#
.SYNOPSIS
    Performs an automated backup of a folder using Robocopy.

.DESCRIPTION
    Mirrors the contents of a source folder to a destination folder,
    generating a log file with details of the backup.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

# Source and destination paths
$source = "C:\Projects"
$destination = "D:\Backup\Projects"
$logfile = "C:\Temp\BackupLog.txt"

# Run Robocopy with mirror mode
Robocopy $source $destination /MIR /R:1 /W:1 /LOG:$logfile

Write-Host "Backup completed. Log saved at $logfile"

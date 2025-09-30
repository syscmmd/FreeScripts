<#
.SYNOPSIS
    Monitors and restarts a Windows service if it is not running.

.DESCRIPTION
    Checks the status of the specified service. If it is stopped, the script restarts it automatically.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

# Service to monitor
$serviceName = "Spooler"  # Example: Print Spooler service

# Get the service object
$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

# Check and restart if not running
if ($service.Status -ne 'Running') {
    Restart-Service -Name $serviceName -Force
    Write-Host "Service $serviceName was stopped and has been restarted."
} else {
    Write-Host "Service $serviceName is running normally."
}

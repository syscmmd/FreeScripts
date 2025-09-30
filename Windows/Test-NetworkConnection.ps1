<#
.SYNOPSIS
    Tests network connectivity to a list of hosts.

.DESCRIPTION
    Performs a simple ping test for each specified host and displays the response time and status.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

# List of hosts to test
$hosts = @("8.8.8.8", "1.1.1.1", "microsoft.com", "google.com")

# Loop through hosts and test connectivity
foreach ($h in $hosts) {
    Test-Connection -ComputerName $h -Count 2 |
    Select-Object Address, ResponseTime, Status
}

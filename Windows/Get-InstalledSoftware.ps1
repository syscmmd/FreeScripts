<#
.SYNOPSIS
    Lists all installed software on the local machine.

.DESCRIPTION
    Retrieves installed applications from the Windows registry (both 32-bit and 64-bit paths).
    Exports the results to a CSV file for reporting purposes.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

# Query installed applications from registry paths
Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* ,
HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* |
Select-Object DisplayName, DisplayVersion, Publisher, InstallDate |
Sort-Object DisplayName |
Export-Csv "C:\Temp\InstalledSoftware.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Report saved at C:\Temp\InstalledSoftware.csv"

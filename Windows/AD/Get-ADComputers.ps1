<#
.SYNOPSIS
    Retrieves all computers from Active Directory.

.DESCRIPTION
    Lists all computer objects, including OS version and last logon time.
    Exports the results to a CSV file.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

Import-Module ActiveDirectory

Get-ADComputer -Filter * -Properties Name, OperatingSystem, LastLogonDate |
Select-Object Name, OperatingSystem, LastLogonDate |
Export-Csv "C:\Temp\ADComputers.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Computer report saved at C:\Temp\ADComputers.csv"

<#
.SYNOPSIS
    Lists all disabled users in Active Directory.

.DESCRIPTION
    Retrieves AD accounts where the 'Enabled' property is set to false.
    Useful for audits and cleanup tasks.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

Import-Module ActiveDirectory

Get-ADUser -Filter {Enabled -eq $false} -Properties DisplayName, SamAccountName |
Select-Object DisplayName, SamAccountName |
Export-Csv "C:\Temp\DisabledUsers.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Disabled users report saved at C:\Temp\DisabledUsers.csv"

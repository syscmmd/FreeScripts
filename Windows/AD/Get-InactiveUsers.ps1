<#
.SYNOPSIS
    Generates a report of Active Directory users inactive for more than X days.

.DESCRIPTION
    This script queries Active Directory and retrieves users that have not logged in
    for the last 90 days (default). The output is exported to a CSV file for auditing purposes.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

Import-Module ActiveDirectory

# Number of days of inactivity
$DaysInactive = 90

# Calculate the date threshold
$Time = (Get-Date).AddDays(-$DaysInactive)

# Get inactive users
Get-ADUser -Filter {LastLogonDate -lt $Time -and Enabled -eq $true} -Properties LastLogonDate |
Select-Object Name, SamAccountName, LastLogonDate |
Export-Csv "C:\Temp\InactiveUsers.csv" -NoTypeInformation -Encoding UTF8

Write-Host "Report generated at C:\Temp\InactiveUsers.csv"

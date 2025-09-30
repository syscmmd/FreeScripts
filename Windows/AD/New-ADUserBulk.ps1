<#
.SYNOPSIS
    Creates new Active Directory users in bulk from a CSV file.

.DESCRIPTION
    Imports a CSV file containing user details and creates AD accounts automatically.
    CSV must include: SamAccountName, Name, GivenName, Surname, Department, OU.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

Import-Module ActiveDirectory

# Path to CSV file
$users = Import-Csv "C:\Temp\NewUsers.csv"

foreach ($u in $users) {
    New-ADUser -SamAccountName $u.SamAccountName `
               -Name $u.Name `
               -GivenName $u.GivenName `
               -Surname $u.Surname `
               -Department $u.Department `
               -Path $u.OU `
               -AccountPassword (ConvertTo-SecureString "P@ssword123" -AsPlainText -Force) `
               -Enabled $true
    Write-Host "User $($u.Name) created."
}

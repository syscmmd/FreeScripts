<#
.SYNOPSIS
    Resets a user’s Active Directory password.

.DESCRIPTION
    Prompts for a username, resets the password to a default secure string,
    and forces password change at next logon.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$UserName
)

Import-Module ActiveDirectory

$NewPassword = ConvertTo-SecureString "P@ssword123!" -AsPlainText -Force

Set-ADAccountPassword -Identity $UserName -NewPassword $NewPassword -Reset
Set-ADUser -Identity $UserName -ChangePasswordAtLogon $true

Write-Host "Password for user $UserName has been reset."

<#
.SYNOPSIS
    Lists all groups a specific user is a member of.

.DESCRIPTION
    Queries Active Directory for a given username and lists their group memberships.

.PARAMETER UserName
    The sAMAccountName of the user to check.

.NOTES
    Author: SysCommand
    Date: 2025-10-01
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$UserName
)

Import-Module ActiveDirectory

Get-ADUser -Identity $UserName -Properties MemberOf |
Select-Object -ExpandProperty MemberOf |
ForEach-Object { (Get-ADGroup $_).Name }

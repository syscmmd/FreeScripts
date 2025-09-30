<#
.SYNOPSIS
    List all virtual machines in an Azure subscription.
.DESCRIPTION
    Uses Azure PowerShell (Az module) to retrieve VM details.
#>

Import-Module Az.Compute
Connect-AzAccount

Write-Host "==== Azure Virtual Machines ====" -ForegroundColor Cyan
Get-AzVM | Select-Object Name, ResourceGroupName, Location, ProvisioningState

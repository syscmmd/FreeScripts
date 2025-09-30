<#
.SYNOPSIS
    List all S3 buckets in an AWS account.
.DESCRIPTION
    Uses AWS PowerShell module (AWSPowerShell.NetCore) to fetch and display bucket names.
#>

Import-Module AWSPowerShell.NetCore

Write-Host "==== AWS S3 Buckets ====" -ForegroundColor Cyan
Get-S3Bucket | Select-Object -ExpandProperty BucketName

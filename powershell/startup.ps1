$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

Invoke-Expression  "$PSScriptRoot\start_net_services.ps1"
Start-Sleep -s 10
Invoke-Expression "$PSScriptRoot\start_apps.ps1"

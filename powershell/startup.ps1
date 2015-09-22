$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
Write-Host $PSScriptRoot

Invoke-Expression  "$PSScriptRoot\start_net_services.ps1"
Start-Sleep -s 10
Invoke-Expression "$PSScriptRoot\cloud_sync.ps1"
Invoke-Expression "$PSScriptRoot\change_wallpaper.ps1"
Invoke-Expression "$PSScriptRoot\start_apps.ps1"
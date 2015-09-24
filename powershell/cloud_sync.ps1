Write-Host "Starting net services..."
$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition
Invoke-Expression "$PSScriptRoot\start_net_services.ps1"

$Proc = "googledrivesync"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\GoogleDrive\googledrivesync.exe" -WindowStyle Hidden
    Write-Host "GoogleDrive is running..."
}

$Proc = "Dropbox"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "C:\Users\Terekhov-EV\AppData\Roaming\Dropbox\bin\Dropbox.exe" -WindowStyle Hidden
    Write-Host "Dropbox is running..."
}

Write-Host "Syncing with clouds..."
Start-Sleep -s 120
Write-Host "Syncing done."

$Proc = "googledrivesync"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -ne $null) {
    Stop-Process -ProcessName $Proc
    Write-Host "GoogleDrive has stopped."
}

$Proc = "Dropbox"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -ne $null) {
    Stop-Process -ProcessName $Proc
    Write-Host "Dropbox has stopped."
}

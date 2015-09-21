$Proc = "dualwallpaperchanger"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\DualMonitorTools-1.10\DualWallpaperChanger.exe" -WindowStyle Hidden -WorkingDirectory "D:\PortableApps\DualMonitorTools-1.10"
}


Write-Host "Changing your wallpaper..."
Start-Sleep -s 40
Write-Host "Done."
Stop-Process -ProcessName $Proc
Write-Host "Wallpaper Changer has stopped."

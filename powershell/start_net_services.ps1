$Proc = "tor"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\Tor\tor.cmd" -WindowStyle Hidden
    Write-Host "Tor is running..."
}

$Proc = "privoxy"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\Privoxy-3.0.23\privoxy.exe" -WindowStyle Hidden -WorkingDirectory "D:\PortableApps\Privoxy-3.0.23"
    Write-Host "Privoxy is running..."
}

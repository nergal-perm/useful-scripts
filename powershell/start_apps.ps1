# Запускаем outlook
$Proc = "outlook"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "C:\Program Files (x86)\Microsoft Office\Office14\OUTLOOK.EXE" -WindowStyle Hidden
}

# Запускаем PortableApps
$Proc = "portableappsplatform"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\PortableApps.com\PortableAppsPlatform.exe" -WindowStyle Hidden -WorkingDirectory "D:\PortableApps\PortableApps.com"
}

# запускаем Skype
$Proc = "skypeportable"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\SkypePortable\SkypePortable.exe" -WindowStyle Hidden -WorkingDirectory "D:\PortableApps\SkypePortable"
}

# запускаем Evernote
$Proc = "evernote"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "C:\Users\Terekhov-EV\AppData\Local\Apps\Evernote\Evernote\Evernote.exe"  -WorkingDirectory "C:\Users\Terekhov-EV\AppData\Local\Apps\Evernote\Evernote"
}

# запускаем todo.txt
$Proc = "todotxt"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\Todo.txt\todotxt.exe"  -WorkingDirectory "D:\PortableApps\Todo.txt"
}

# запускаем Code
$Proc = "code"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "C:\Program Files (x86)\Microsoft VS Code\Code.exe"  -WorkingDirectory "C:\Program Files (x86)\Microsoft VS Code"
}

# запускаем Far
$Proc = "far"
$Running = Get-Process $Proc -ErrorAction SilentlyContinue
if ($Running -eq $null) {
    Start-Process -FilePath "D:\PortableApps\Far\Far.exe"  -WorkingDirectory "D:\PortableApps\Far"
}

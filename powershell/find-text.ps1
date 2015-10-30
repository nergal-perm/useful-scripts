$Path = "C:\users\terekhov-ev\Dropbox\Todo"
$Text = "-brinks:"
$PathArray = @()
$Results = "D:\temp\brinks.txt"

# This code snippet gets all the files in $Path that end in ".txt".
Get-ChildItem $Path -Filter "*.closed" -Recurse |
   Where-Object { $_.Attributes -ne "Directory"} |
      ForEach-Object {
         $PathArray += (Get-Content $_.FullName -Encoding UTF8 | Select-String -Pattern $Text)
      }
Write-Host "Contents of ArrayPath:"
$PathArray | % {$_} | Out-File $Results -encoding UTF8
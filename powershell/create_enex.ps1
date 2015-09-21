$title = "Product Description"
$body = [System.IO.File]::ReadAllText(".\notes.html")

$content = [System.IO.File]::ReadAllText(".\Import.enex").Replace("%%NOTE_TITLE%%", $title).Replace("%%NOTE_BODY%%", $body)
[System.IO.File]::WriteAllLines("C:\Users\Terekhov-EV\Dropbox\ENAutoImport\note.enex", $content)

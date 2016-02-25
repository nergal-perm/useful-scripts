$CurrentDate = Get-Date -Format "yyyy-mm-dd"

Write-Host "Commiting all changes into DailyReview"
cd ~\Dropbox\Todo
git add --all
git status
git commit -a -m "Work data for $CurrentDate"
git push origin master

Write-Host "Commiting all changes into BookDb"
cd ~\Dropbox\BookDb
git add --all
git status
git commit -a -m "Books reading data for $CurrentDate"
git push origin master                  
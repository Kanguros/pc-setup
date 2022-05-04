function prompt {
    $CurrDir = Get-Location
    $Date = Get-Date -Format 'HH:mm:ss'
    Write-Host ""
    Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
    Write-Host "$Date" -ForegroundColor White -BackgroundColor DarkGray -NoNewline
    Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
    Write-Host "$CurrDir"  -ForegroundColor Blue -BackgroundColor DarkGray -NoNewline
    Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
    return " "
} 

#end prompt function

$Repos = "C:\Users\em86up\Repos"

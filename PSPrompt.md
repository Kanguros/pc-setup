# PowerShell


## $PROFILE

```
notepad $PROFILE
```

Paste `prompt ` definition

```
function prompt
{
    Write-Host ""
    Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
    $Date = Get-Date -Format 'HH:mm:ss'
    Write-PromptItem $Date White

    $Venv = $env:VIRTUAL_ENV
    if ($Venv)
    {
    	Write-PromptItem (Split-Path $Venv -Leaf) Blue
    }

    $CurrDir = Get-Location
    Write-PromptItem $CurrDir Magenta

    Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray
    Write-Host "||" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
    return " "
} #end prompt function
```

## Aliases


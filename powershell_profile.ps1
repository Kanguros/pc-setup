function Write-PromptItem
{
    param (
        $ItemString,
        $ItemColor
    )
    if ($null -ne $ItemString)
    {
        Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
        Write-Host "$ItemString" -ForegroundColor $ItemColor -BackgroundColor DarkGray -NoNewline
        Write-Host "|" -ForegroundColor Yellow -BackgroundColor DarkGray -NoNewline
    }
}

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

Function Poetry-Shell
{
    Invoke-Expression "py -3 ${ENV:USERPROFILE}\.poetry\bin\poetry shell"
}

Function Env-Path
{
    return $env:Path -split ';'
}


Function AddPath {
    param (
        [string]$addPath
    )
    if (Test-Path $addPath){
        $regexAddPath = [regex]::Escape($addPath)
        $arrPath = $env:Path -split ';' | Where-Object {$_ -notMatch "^$regexAddPath\\?"}
        $env:Path = ($arrPath + $addPath) -join ';'
    } else {
        Throw "'$addPath' is not a valid path."
    }
}

Set-Alias Shell -Value Poetry-Shell
Set-Alias EnvPaths -Value Env-Path

$Repos = "D:\Projects"
$Notes = "D:\Notes"
# Workstation Setup

Few steps to what and how to install all required software for whatsoever development.

### Download `choco`

1. Open _Power Shell_ as a Administrator and paste:
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

### Basic apps

```
choco install 7zip.install --version 21.7 -y
choco install microsoft-teams.install --version 1.5.00.8070 -y
choco install python3 --version 3.10.4 -y
choco install git --version 2.35.2 -y
choco install git-credential-manager-for-windows --version 1.20.0 -y
choco install googlechrome --version 100.0.4896.88 -y
choco install microsoft-windows-terminal --version 1.12.10732.0 -y
choco install slack --version 4.25.2 -y
choco install googledrive --version 56.0.11.0 -y
choco install azure-cli --version 2.35.0 -y
choco install docker-desktop --version 4.7.0 -y
choco install graphviz --version 2.49.3 -y
choco install whatsapp --version 2.2210.9 -y
choco install marktext
```


### Python's poetry

```
(Invoke-WebRequest -Uri https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py -UseBasicParsing).Content | python -
```

### WSL 

```
choco install wsl2 --params "/Version:2 /Retry:true"
```

Windows features

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

```
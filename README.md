# PC Setup

Few steps to what and how to install and configure useful software for whatsoever development.

**Scope:** Windows 10 

## Initial setup 

### Install _choco_

Open _Power Shell_ as a Administrator and paste:
```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```
It should take care of everything in regards to `choco` installation. 

### Basic software

It is my personal list of used software. 

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

choco install wsl2 --params "/Version:2 /Retry:true"
```

### Python's poetry

```
(Invoke-WebRequest -Uri https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py -UseBasicParsing).Content | python -
```

### WSL 

Windows features

```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

### Docker

#### Errors
>   Error response from daemon: open \\.\pipe\docker_engine_linux: The system cannot find the file specified.

Restarting Docker's service fix the issue.
```
Net stop com.docker.service
Net start com.docker.service
```

Full command, as admin:
```
runas /user:administrator "Net stop com.docker.service"
runas /user:administrator "Net start com.docker.service"
```

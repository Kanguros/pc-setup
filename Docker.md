# Docker

```
choco install oh-my-posh
```



### Errors

>   Error response from daemon: open \\.\pipe\docker_engine_linux: The system cannot find the file specified.

Restarting Docker's service fix the issue.

```
Net stop com.docker.service
Net start com.docker.service
```

Full command, as admin:

```
runas /user:administrator "Net stop com.docker.service"
Net start com.docker.service
```



## PowerShell



### Terminal Icons

```powershell
Install-Module -Name Terminal-Icons -Repository PSGallery -Scope CurrentUser
```



### $PROFILE

```
notepad $PROFILE
```

Paste `prompt ` definition

```
d
```


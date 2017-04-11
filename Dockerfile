FROM microsoft/windowsservercore
#FROM microsoft/nanoserver

LABEL maintainer="tom@thingamajig.net"
LABEL description="Windows Server Core with Chocolatey"

RUN powershell -executionpolicy bypass -command \
      # Install chocolatey ;\
      Invoke-Expression (Invoke-WebRequest 'https://chocolatey.org/install.ps1' -UseBasicParsing)

RUN powershell -command "choco source list"
	
ENTRYPOINT ["C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"]	

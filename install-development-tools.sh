#!/bin/sh
echo "Check if Development tools is installed"
yum grouplist | grep "Development Tools"

if [ "$?" = "0" ]; then
	echo "There's already an installation of Development Tools"
	exit 0
else
	echo "Start installation of Development Tools"
	sudo yum group install -y "Development Tools"
fi

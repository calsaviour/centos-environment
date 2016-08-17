#!/bin/sh
echo "Check if python devel tools is installed"
yum list installed python-devel*

if [ "$?" = "0" ]; then
	echo "There's already an installation of python devel tools"
	exit 0
else
	echo "Start installation of python devel tools"
	sudo yum install -y python-devel
fi

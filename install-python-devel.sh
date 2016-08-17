#!/bin/sh
echo "Check if python devel tools is installed"

yum list installed python-devel*
if [ "$?" = "0" ]; then
	echo "There's already an installation of python devel tools"
else
	echo "Start installation of python devel tools"
	sudo yum install -y python-devel
fi


yum list installed | grep epel-release.noarch
if [ "$?" = "0" ]; then
	echo "There's already an installation of epel-release"
else
	echo "Start installation of python devel tools"
	sudo yum install -y epel-release
fi


pip --version > /dev/null 2>&1
if [ "$?" = "0" ]; then
	echo "There's already an installation of pip"
else
	echo "Start installation of pip"
	sudo yum install -y python pip
fi

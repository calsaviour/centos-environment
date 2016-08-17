#!/bin/sh
# Define variables
USER_HOME=/home/vagrant
USER_PROFILE=$USER_HOME/.bash_profile
INSTALL_DIR=/usr/bin
GIT_COMMAND=git

echo "Check if git is installed"
git --version > /dev/null 2>&1
if [ "$?" = "0" ]; then
	echo "Git is installed"
	exit 0	
else
	echo "Starting installation of git"
	sudo yum install -y git
	echo "Complete installation"
fi

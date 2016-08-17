#!/bin/sh
# variables
INSTALL_PACKAGE=/vagrant/tools/atom.x86_64.rpm

echo "Check if Atom installed"
atom --version > /dev/null 2>&1
if [ "$?" = "0" ]; then
	echo "There's already an installation of GNOME Desktop"
	exit 0
else
	echo "Start installation of atom"
  sudo yum -y localinstall ${INSTALL_PACKAGE}
  echo "Complete installing atom"
fi

#!/bin/sh
echo "Check if GNOME Desktop is installed"
yum grouplist | grep "GNOME Desktop"

if [ "$?" = "0" ]; then
	echo "There's already an installation of GNOME Desktop"
	exit 0
else
	echo "Start installation of GNOME Desktop"
	sudo yum groups install "GNOME Desktop"
	sudo systemctl set-default graphical.target
	sudo systemctl start graphical.target
fi

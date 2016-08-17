#!/bin/sh

## BY default jre jas been installed. but there is jre 1.7 and jre 1.8
## run command, sudo alternatives --config java
## select the jre 1.7

echo "Check if open jdk is installed"
yum list installed | grep java-1.7.0-openjdk-devel*
if [ "$?" = "0" ]; then
	echo "There's already an installation of Development Tools"
else
	echo "Start installation of open jdk 1.7.0"
	sudo yum install -y java-1.7.0-openjdk-devel
fi

#!/bin/bash

##### PATH
echo 'export PATH=$PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"' >> /etc/bash.bashrc

##### SOURCE LIST
echo "deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
deb http://security.debian.org/debian-security buster/updates main contrib non-free
deb-src http://security.debian.org/debian-security buster/updates main contrib non-free
deb http://deb.debian.org/debian/ buster-updates main contrib non-free
deb-src http://deb.debian.org/debian/ buster-updates main contrib non-free
deb http://deb.debian.org/debian/ buster-backports main contrib non-free
deb-src http://deb.debian.org/debian/ buster-backports main contrib non-free" > /etc/apt/sources.list

##### UPDATE
apt update
apt list --upgradable
apt upgrade -y



##### UTILS
apt install unzip unrar net-tools git curl ffmpeg build-essential -y



##### NETWORK TOOLS
apt install tcpdump nmap arpon arping -y


###### NODEJS
curl -sL https://deb.nodesource.com/setup_current.x | bash -
apt-get install -y nodejs

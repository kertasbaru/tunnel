#!/bin/bash

clear
# install Ruby & lolcat
apt-get install ruby -y
# install lolcat
wget https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
rm -f master.zip
cd lolcat-master/bin
gem install lolcat
cd
rm -rf lolcat-master
# install figlet
apt-get install figlet -y
cd /usr/share
git clone https://github.com/xero/figlet-fonts
mv figlet-fonts/* figlet && rm -rf figlet-fonts

cd
rm -f lolcat.sh
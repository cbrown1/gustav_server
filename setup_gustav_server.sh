#!/bin/bash

set -e

wget -O urserver.rpm https://www.unifiedremote.com/download/linux-x64-rpm
sudo yum -y localinstall urserver.rpm

sudo firewall-cmd --zone=public --add-port=9512/tcp --permanent
sudo firewall-cmd --zone=public --add-port=9512/udp --permanent
sudo firewall-cmd --zone=public --add-port=9511/udp --permanent

sudo firewall-cmd --reload # use this command if you experience connection problems

sudo pip2 install pyro4

echo "[Desktop Entry]
Name=Pyro4 Nameserver 
Comment=Pyro4 allows python scripts to communicate
Exec=/usr/bin/pyro4-ns
Type=Application
Categories=Network;
StartupNotify=true" > pyro4-ns.desktop

cp pyro4-ns.desktop ~/.config/autostart
mv pyro4-ns.desktop ~/.local/share/applications

cp /usr/share/applications/urserver.desktop ~/.config/autostart

git clone https://cbrown1@bitbucket.org/cbrown1/gustav_server.git
cp -r gustav_server/Unified_Remote/Gustav_Input ~/.urserver/remotes/custom


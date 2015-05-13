#!/usr/bin/env bash

apt-get update

apt-get install -y xmlcopyeditor



# Remove unneeded apps:
apt-get -y remove transmission
apt-get -y remove sylpheed
apt-get -y remove mtpaint
apt-get -y remove simple-scan
apt-get -y remove audacious
apt-get -y remove guvcview
apt-get -y remove gnome-mplayer
apt-get -y remove xfburn
apt-get -y remove abiword
apt-get -y remove gnumeric
apt-get -y remove pidgin
apt-get -y remove transmission-gtk




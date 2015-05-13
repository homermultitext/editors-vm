#!/usr/bin/env bash


# Repository for 21st century version of gradle:  
add-apt-repository ppa:cwchien/gradle
apt-get update


# version control
apt-get install -y git
GIT=`which git`
echo Installed git at $GIT


# XML editor
apt-get install -y xmlcopyeditor


# JDK dev bundle
apt-get install -y openjdk-7-jdk
apt-get -y install groovy
apt-get -y install gradle


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




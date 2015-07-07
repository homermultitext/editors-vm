#!/usr/bin/env bash

# Repository for an early-21st-century version of gradle:  
add-apt-repository ppa:cwchien/gradle
apt-get update


#########################################################
### Install packages required for HMT editing ###########
#########################################################

# Clean up any catastrophic reformatting that
# 'git clone' could introduce on a Windows box:
apt-get install -y dos2unix
/usr/bin/dos2unix /vagrant/system/*sh
/usr/bin/dos2unix /vagrant/system/dotprofile
/usr/bin/dos2unix /vagrant/scripts/*sh

# and add bomstrip utils in case XML Copy Editor
# or evil Windows software tries to insert a BOM
# in your editorial work:
apt-get install -y bomstrip

# version control
apt-get install -y git

# an easy editor
apt-get install -y nano


# JDK bundle
apt-get install -y openjdk-7-jdk
apt-get -y install groovy
apt-get -y install gradle

# XML editor
apt-get install -y xmlcopyeditor

# Needed for building morpheus
apt-get install -y subversion
apt-get install -y flex-old


#########################################################
### Markdown bundle                                                               
#########################################################

apt-get -y install mdpress
apt-get -y install retext
apt-get -y install pandoc


#########################################################
### Configure system and user settings        ###########
#########################################################

# Add polytonic Greek layout:
cp /vagrant/system/gr.new /usr/share/X11/xkb/symbols/gr

# System settings: default to US Eastern time for seminar:
timedatectl set-timezone America/New_York

# Set up vagrant user account:
cp /vagrant/system/dotprofile /home/vagrant/.profile
chown vagrant:vagrant /home/vagrant/.profile
if [ ! -e "/home/vagrant/Desktop/shared" ]; then
    ln -s /vagrant /home/vagrant/Desktop/shared
fi

# Remove unneeded apps from base machine:
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


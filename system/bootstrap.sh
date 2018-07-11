#!/usr/bin/env bash



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

# JDK bundle
apt-get install -y openjdk-7-jdk


#########################################################
### Web
apt-get -y install firefox
## alpheios must be manually installed


#########################################################
### Markdown bundle
#########################################################

apt-get -y install mdpress
apt-get -y install pandoc


#########################################################
### Stuttgart Finite State Transducing engine
#########################################################

apt-get -y install sfst

#########################################################
### Configure system and user settings        ###########
#########################################################

# System settings: default to US Eastern time for seminar:
#timedatectl set-timezone America/New_York

# Set up vagrant user account:
cp /vagrant/system/dotprofile /home/vagrant/.profile
chown vagrant:vagrant /home/vagrant/.profile

cp /vagrant/system/mimeapps.list /home/vagrant/.config
chown vagrant:vagrant /home/vagrant/.config/mimeapps.list

rm /home/vagrant/.config/plank/dock1/launchers/*.dockitem
cp /vagrant/system/plank-dock1-launchers/*.dockitem /home/vagrant/.config/plank/dock1/launchers
chown vagrant:vagrant /home/vagrant/.config/plank/dock1/launchers/*.dockitem


# sbt
apt-get install -y sbt

# Atom
apt install  -y  atom

GIT=`which git`
cd /vagrant
$GIT clone https://github.com/neelsmith/atomic-tei.git

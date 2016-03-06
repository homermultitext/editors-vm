#!/usr/bin/env bash

#
# Add repository for an early-21st-century version of gradle:
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

# JDK bundle
apt-get install -y openjdk-7-jdk
apt-get -y install groovy
apt-get -y install gradle

# XML editor
apt-get install -y xmlcopyeditor

#########################################################
### Web
apt-get -y install firefox
## alpheios must be manually installed?


#########################################################
### Markdown bundle
#########################################################

apt-get -y install mdpress
apt-get -y install retext
apt-get -y install pandoc


#########################################################
### Configure system and user settings        ###########
#########################################################

# System settings: default to US Eastern time for seminar:
#timedatectl set-timezone America/New_York


# Set up vagrant user account:
cp /vagrant/system/dotprofile /home/vagrant/.profile
chown vagrant:vagrant /home/vagrant/.profile

cp /vagrant/system/planck-dock1-settings /home/vagrant/.config/plank/dock1/settings
chown vagrant:vagrant /home/vagrant/.config/plank/dock1/settings

cp /vagrant/system/plank-dock1-launchers/*.dockitem /home/vagrant/.config/plank/dock1/launchers
chown vagrant:vagrant /home/vagrant/.config/plank/dock1/launchers/*.dockitem


if [ ! -e atom-amd64.deb ]
    then
      # Add Atom:
      echo "Downloading .deb file for Atom"
      /usr/bin/wget https://github.com/atom/atom/releases/download/v1.0.11/atom-amd64.deb 2> /tmp/atom-log.txt
      echo "Download complete, installing Atom"
      /usr/bin/dpkg --install atom-amd64.deb
      echo "Atom installed. "
fi


if [ ! -e /usr/share/backgrounds/proclus-opening.jpg ]
    then
    echo "Downloading bg image of Venetus A MS"
    /usr/bin/wget http://beta.hpcc.uh.edu/hmt/data/proclus-opening.jpg 2> /tmp/proclus-log.txt
    /bin/mv proclus-opening.jpg /usr/share/backgrounds
fi

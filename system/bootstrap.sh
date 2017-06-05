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


#########################################################
### Scala suite ###########
#########################################################

# scala itself:
if [ ! -e /home/vagrant/scala ]
    then
      /usr/bin/wget https://downloads.lightbend.com/scala/2.11.11/scala-2.11.11.tgz 2>  /tmp/scala-dl-log.txt
      /bin/tar  -zxvf scala-2.11.11.tgz
      /bin/ln  scala-2.11.11 scala
fi

# sbt


echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
apt-get update
apt-get install sbt





# Atom
add-apt-repository ppa:webupd8team/atom
apt update
apt install atom

GIT=`which git`
$GIT clone https://github.com/neelsmith/atomic-tei.git

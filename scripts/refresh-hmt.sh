#!/usr/bin/env /bin/bash


GIT=`which git`
echo git installed at $GIT

# This script is repsonsible for:
# 
# 1. One-time build of morpheus
# 2. Cloning or updating HMT git repositories needed for editing.
#
# It's up to individual editors to maintain their own repository
# for editorial content.
#

if [ -d "/vagrant/hmt-mom" ]; then
    echo "Checking for updates to HMT-MOM (verification system)"
    cd /vagrant/hmt-mom
    $GIT pull
else
    echo "Installing HMT-MOM"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-mom.git
    $GIT clone https://github.com/homermultitext/hmt-mom.git
fi



if [ -d "/vagrant/hmt-authlists" ]; then
    echo "Checking for updates to HMT authority lists"
    cd /vagrant/hmt-authlists
    $GIT pull
else
    echo "Installing HMT authority lists"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-authlists.git
    $GIT clone https://github.com/homermultitext/hmt-authlists.git
fi


if [ -d "/vagrant/byzortho" ]; then
    echo "Checking for updates to orthographic equivalents"
    cd /vagrant/byzortho
    $GIT pull
else
    echo "Installing orthographic equivalents repository"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/byzortho.git
    $GIT clone https://github.com/homermultitext/byzortho.git
fi




if [ -d "/vagrant/lexmapping" ]; then
    echo "Checking for updates to modern orthographic equivalents"
    cd /vagrant/lexmapping
    $GIT pull
else
    echo "Installing modern orthographic equivalents repository"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/lexmapping.git
    $GIT clone https://github.com/homermultitext/lexmapping.git
fi




if [ -d "/vagrant/morpheus" ]; then
    echo "Checking for updates to morphological stems"
    cd /vagrant/morpheus
    $GIT pull
else
    echo "Installing morphological system"
    cd /vagrant

    echo  Running   $GIT clone https://github.com/homermultitext/morpheus.git
    $GIT clone https://github.com/homermultitext/morpheus.git
    cd /vagrant/morpheus
    sh build_linux.sh

    cd /vagrant/morpheus/src/morphlib/
    make morphlib.a

    cd /vagrant/morpheus
    sh build_linux.sh

fi

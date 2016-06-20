#!/usr/bin/env /bin/bash


GIT=`which git`
echo git installed at $GIT

# This script is repsonsible for cloning or updating all HMT git repositories
# needed for editing.
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


if [ -d "/vagrant/greeklang" ]; then
    echo "Checking for updates to Kanōnes Greek morphology system"
    cd /vagrant/greeklang
    $GIT pull
else
    echo "Installing Kanōnes Greek morphology system"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/neelsmith/greeklang.git
    $GIT clone https://github.com/neelsmith/greeklang.git
fi

if [ -d "/vagrant/hmt-lexicon" ]; then
    echo "Checking for updates to HMT morphological lexicon"
    cd /vagrant/hmt-lexicon
    $GIT pull
else
    echo "Installing HMT morphological lexicon"
    cd /vagrant
    echo  Running  $GIT clone https://github.com/homermultitext/hmt-lexicon.git
    $GIT clone https://github.com/homermultitext/hmt-lexicon.git
fi

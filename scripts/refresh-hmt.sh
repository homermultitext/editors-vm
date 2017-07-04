#!/usr/bin/env /bin/bash


GIT=`which git`
echo git installed at $GIT

# This script is repsonsible for cloning or updating all HMT git repositories
# needed for editing.
# 
# It's up to individual editors to maintain their own repository
# for editorial content.
#



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



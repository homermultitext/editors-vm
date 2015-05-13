---
title: "HMT editors' virtual machine (summer 2015)"
layout: page
---


## About `vm2015` and prerequisites to use it##

`vm2015` defines a virtual machine running Ubuntu 14.04 with a LXDE GUI, and including all the software necessary to edit and validate contributions to the Homer Multitext project.  It uses Vagrant to define a virtual machine you can run with  VirtualBox.  The two prerequisites for running `vm2015` are therefore:

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Getting started ##


The project github repository is <https://github.com/homermultitext/vm2015.git>.  Clone or download a copy of the repository.  From a terminal within the vm2015 directory, run

    vagrant up

> Your machine must be able to run a 64-bit VM.  Some computers have BIOS settings that prohibit this.  If that happens, you'll have to change your BIOS settings to allow the 64-bit VM to run.



## Configuration


- how to change the time zone.  (This can be important, since version control repositories depend on reliable time-stamps!)
- how to change the keyboard layout.
- `refresh-hmt.sh`: one-time set up and refresh




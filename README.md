# vmprovision
Vagrant provisioning files for cFS Training

This repo includes the following files:
```
Vagrantfile         Vagrant configuraiton file
bootstrap.sh        Shell script to install necessary tools
html/index.html     Placeholder default landing location for installed web server
README.md           This file
```

## Vagrant box
Current box: bento/ubuntu-24.04 version 202404.26.0 from https://app.vagrantup.com/bento/

## Required Installations
It is assumed you obtained these files via the repo tool and the cfs-manifest repository, so you have already installed **_repo_** and **_git_**.

Additionally, to run the VM, you need to install:
- **_VirtualBox_**
- **_Vagrant_**

You will optionally need an X11 server.  (See below)
If you are on a Windows machine, it assumed that you have PowerShell installed.

### X11 Forwarding
X11 forwarding is enabled for this configuration.  An X11 Server must be installed on the host machine to use X11 forwarding.
X11 services are necessary if you intend to use the cFS Ground System utility to send commands and receive telemetry.

For Mac machines, you can install and run **_XQuartz_**.

For Windows machines, you can install and run **_XMing_**.

## Bringing up the VM
Bring up a terminal window (_Terminal_ in Mac or _PowerShell_ in Windows) and navigate to the vmprovisions directory.
From that directory, run:
```
vagrant up
```
This will take several minutes to download the Vagrant box, boot it, and install the software from the bootstrap script.
Once it completes, you can ssh to the VM

## Connecting to the VM
### Without SSH forwarding
To connect to the VM without X11 forwarding, simply run the vagrant ssh command (from the vmprovision directory):
```
vagrant ssh
```

This will connect you to the VM as user "vagrant".

### With SSH forwarding
To connect to the VM with X11 forwarding in Windows Powershell you must first set the DISPLAY environment and then (in the vmprovision directory) run the vagrant ssh command:
```
$env:DISPLAY="127.0.0.1:0.0"
vagrant ssh -- -Y
```

To connect to the VM with X11 forwarding in a Mac Terminal, simply run the vagrant ssh command in the vmprovision directory:
```
vagrant ssh -- -Y
```

Once you are connected, you can verify the X11 connection by running ```xclock```, ```xeyes``` or ```xterm``` from the VM.

## Web Server
To connect to the web server, point your browser to:
```
http://localhost:4567
```
Currently the VM only has a placeholder file for the web server.

## Ending the Session
To end the VM session, first make sure you have ended all SSH connections to the VM (```exit``` from each session).  From the Mac or Windows terminal, run:
```
vagrant halt
```
This will power down the VM.  If you want to remove the VM from VirtualBox entirely, you can now enter:
```
vagrant destroy
```
and answer ```y``` when prompted.


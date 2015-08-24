#!/bin/bash

# Setting vagrant user to no require password when using sudo
echo 'vagrant ALL=(ALL) NOPASSWD: ALL\' >> /etc/sudoers

# configuring default ssh key
mkdir /home/vagrant/.ssh
wget --no-check-certificate 'https://github.com/mitchellh/vagrant/raw/master/keys/vagrant.pub' -O /home/vagrant/.ssh/authorized_keys
chown -R vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

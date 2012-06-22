#!/bin/bash

sudo rpm -Uvh --force http://mirrors.kernel.org/fedora-epel/6/x86_64/epel-release-6-7.noarch.rpm
sudo yum install salt-minion
sudo echo {{ priv_key }} > /etc/salt/pki/minion.pem
sudo echo {{ pub_key }} > /etc/salt/pki/minion.pub
sudo /sbin/chkconfig salt-minion on
sudo service salt-minion start

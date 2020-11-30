#!/bin/bash

#Install dependencies

export YAMCS_VERSION=5.1.4

wget https://github.com/yamcs/yamcs/releases/download/yamcs-${YAMCS_VERSION}/yamcs-${YAMCS_VERSION}-1.x86_64.rpm
sudo useradd -r yamcs
sudo alien --scripts -i yamcs-${YAMCS_VERSION}-1.x86_64.rpm 
sudo chown -R root:root /opt/yamcs
sudo rm -Rf /opt/yamcs/cache
sudo rm -Rf /opt/yamcs/etc/*
sudo cp yamcs/* /opt/yamcs/etc/
sudo rm -Rf /opt/yamcs/log
sudo rm -Rf /opt/yamcs/mdb
rm yamcs-${YAMCS_VERSION}-1.x86_64.rpm

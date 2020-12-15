#!/bin/bash

#Install dependencies
sudo apt update
sudo apt-get install wget
sudo apt-get install alien
sudo apt-get install -y default-jre
sudo apt-get install -y default-jdk

export YAMCS_VERSION=5.1.4

wget https://github.com/yamcs/yamcs/releases/download/yamcs-${YAMCS_VERSION}/yamcs-${YAMCS_VERSION}-1.x86_64.rpm
sudo useradd -r yamcs # Could be used to isolate our yamcs installation on system
sudo alien --scripts -i yamcs-${YAMCS_VERSION}-1.x86_64.rpm
rm yamcs-${YAMCS_VERSION}-1.x86_64.rpm

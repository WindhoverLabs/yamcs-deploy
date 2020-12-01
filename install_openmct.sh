#!/bin/bash

#Dependencies
sudo apt-get install nodejs
sudo apt-get install npm
sudo apt-get install git

git clone https://github.com/akhenry/openmct-yamcs.git
cd openmct-yamcs
npm install

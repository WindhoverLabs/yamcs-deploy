c#!/bin/bash

# Install flight software prerequisities
sudo apt install -y git cmake libc6-dev-i386

# Pull down flight software
mkdir ~/git
cd ~/git
git clone https://github.com/WindhoverLabs/airliner.git
cd airliner
git checkout integrate_outstanding_branches

# Install additional flight software prerequisites
sudo pip3 install -r core/tools/requirements.txt

# Build flight software
make tutorial/cfs

# Install YAMCS
cd ~/git
git clone https://github.com/WindhoverLabs/yamcs-deploy.git
cd yamcs-deploy
git checkout yamcs_sandbox
./install_yamcs.sh
sudo sh -c 'echo export PATH=\${PATH}:/opt/yamcs/bin > /etc/profile.d/yamcs.sh'
sudo chmod 644 /etc/profile.d/yamcs.sh
sudo sh -c 'echo export PATH=\${PATH}:/opt/yamcs/bin >> /etc/bash.bashrc'

# Setup YAMCS
cd ~/git
git clone https://github.com/WindhoverLabs/yamcs-cfs.git
cd yamcs-cfs
git checkout update-yamcs-tools

# Setup YAMCS workspace
cd ~/git
mkdir yamcs-workspace
sudo cp -r yamcs-cfs/src/main/yamcs/etc/ ~/git/yamcs-workspace
sudo chown -R ${USER}:${GROUP} ~/git/yamcs-workspace/

# All done
echo "Done"
echo "To run flight software: "
echo "  cd ~/git/airliner/build/tutorial/cfs/target/target/exe"
echo "  ./airliner"


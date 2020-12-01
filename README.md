# yamcs-deploy
Scripts to easily deploy instances of YAMCS with openMCT

1. [Install YAMCS](#install_yamcs)

## Install YAMCS<a name="install_yamcs"></a>

1. Install YAMCS
```
git clone https://github.com/WindhoverLabs/yamcs-deploy.git
cd yamcs-deploy
source ./install_yamcs
```
This script is known to work on `Ubuntu 20.04.1 LTS`.

**NOTE**: The script __must__ be sourced, otherwise the PATH variable will not keep its value
and users will not be able to invoke YAMCS from anywhere on their system.

The installation will be saved under `/opt/yamcs`.

2. Now the yamcs tools can be invoked from the command line. 
- `yamcsadmin` for yamcs admin tools.
- `yamcsd` for running yamcs instances.
 
 
 Documentation updated on December 1, 2020.
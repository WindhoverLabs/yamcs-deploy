# yamcs-deploy
Scripts to easily deploy instances of YAMCS with openMCT
**NOTE**: These scripts are known to work on `20.04.1 LTS`


1. [Quick Start](#quick_start)
2. [Install YAMCS](#install_yamcs)


## Quick Start<a name="quick_start"></a>
To Get a training environment with real flight software and a ground system quickly, run the following
```
./setup_yamcs_sandbox.sh
```

**NOTE**: In some rare cases one may get the following error when running `yamcsd`:
```
java.lang.UnsatisfiedLinkError: Cannot load module /tmp/librocksdbjni858257496864179953.so

```
or something similar. To fix this run the following:

`sudo mount /tmp -o remount,exec`
To find out more info about this issue, go on here:https://github.com/docker/compose/issues/1339

 
## Install YAMCS<a name="install_yamcs"></a>

1. Install YAMCS
```
git clone https://github.com/WindhoverLabs/yamcs-deploy.git
cd yamcs-deploy
source ./install_yamcs
```
This script is known to work on `Ubuntu 20.04.1 LTS`.

The installation will be saved under `/opt/yamcs`.

2. Now the yamcs tools can be invoked from the /opt/yamcs/bin.
- `yamcsadmin` for yamcs admin tools.
- `yamcsd` for running yamcs instances.


**TODO**: Document steps for `install_openmct.sh`
 
Documentation updated on December 15, 2020.

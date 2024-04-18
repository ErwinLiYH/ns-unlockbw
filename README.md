## Changes from ns-3.41

This repository contains a modified version of ns-3.41, specifically altering the LTE eNodeB to eliminate the restriction on Resource Block (RB) numbers.

In the original ns-3.41, the bandwidth could only be configured to specific values as per LTE standards, which include:

- 6 RBs for 1.4 MHz
- 15 RBs for 3 MHz
- 25 RBs for 5 MHz
- 50 RBs for 10 MHz
- 75 RBs for 15 MHz
- 100 RBs for 20 MHz

In this modified version, the eNodeB's UlBandwidth and DlBandwidth can be set to any integer from 1 to 100. For the range of 1 to 15, the bandwidth settings are determined by linear interpolation between the points (6RB, 1.4MHz) and (15RB, 3MHz). For the range of 15 to 100, the settings are adjusted using linear interpolation between the points (15RB, 3MHz) and (100RB, 20MHz).

Changed file:

- ns-3.41/src/lte/model/component-carrier.cc
- ns-3.41/src/lte/model/lte-enb-net-device.cc
- ns-3.41/src/lte/model/lte-ffr-algorithm.cc
- ns-3.41/src/lte/model/lte-spectrum-value-helper.cc

## Original README.md from ns-3

This is **_ns-3-allinone_**, a repository with some scripts to download
and build the core components around the 
[ns-3 network simulator](https://www.nsnam.org).
More information about this can be found in the
[ns-3 tutorial](https://www.nsnam.org/documentation/).

If you have downloaded this in tarball release format, this directory
contains some released ns-3 version, along with the repository for
the [NetAnim network animator](https://gitlab.com/nsnam/netanim/).
In this case, just run the script `build.py`, which attempts to build 
NetAnim (if dependencies are met) and then ns-3 itself.
If you want to build ns-3 examples and tests (a full ns-3 build),
instead type:
```
./build.py --enable-examples --enable-tests
```
or you can simply enter into the ns-3 directory directly and use the
build tools therein (see the tutorial).

This directory also contains the [bake build tool](https://www.gitlab.com/nsnam/bake/), which allows access to
other extensions of ns-3, including the Direct Code Execution environment,
BRITE, click and openflow extensions for ns-3.  Consult the ns-3 tutorial
on how to use bake to access optional ns-3 components.

If you have downloaded this from Git, the `download.py` script can be used to
download bake, netanim, and ns-3-dev.  The usage to use
basic ns-3 (netanim and ns-3-dev) is to type:
```
./download.py
./build.py --enable-examples --enable-tests
```
and change directory to ns-3-dev for further work.

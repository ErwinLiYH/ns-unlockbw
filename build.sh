sudo apt install libeigen3-dev

./ns3 configure --enable-python-bindings --enable-tests --enable-examples --enable-eigen -d optimized

./ns3 build
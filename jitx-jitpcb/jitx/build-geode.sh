#!/usr/bin/env bash
BINDIR=$HOME/bin
INSTALLROOT=$HOME

cd $HOME/jitpcb/geode
mkdir build
cd build
cmake ../
make
sudo make install

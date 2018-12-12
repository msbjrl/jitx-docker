#!/usr/bin/env bash
BINDIR=$HOME/bin
INSTALLROOT=$HOME

which python
python -V
git clone https://github.com/mathandy/svgpathtools.git
(cd svgpathtools && sudo python setup.py install)
cd $HOME/jitpcb/geode
./metaBuild.sh release
(cd build; sudo make install)

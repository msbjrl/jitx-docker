#!/usr/bin/env bash
BINDIR=$HOME/bin
INSTALLROOT=$HOME

JITPCBDIR=$HOME/jitpcb-release
mkdir -p $JITPCBDIR
cat <<EOF > $JITPCBDIR/License.txt
Copyright (c) 2018, JITX Inc. All Rights Reserved.
EOF
cd jitpcb
stanza scripts/installdev.stanza -o installdev
./installdev -gen-make <<EOF
linux
none
$JITPCBDIR
EOF

scripts/make-jitpcb.sh

cd $HOME

cat <<EOF  >> .jitpcb
install-dir = "$HOME/jitpcb/lstage"
EOF

cat .jitpcb

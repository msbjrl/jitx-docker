#!/usr/bin/env bash
BINDIR=$HOME/bin
INSTALLROOT=$HOME
STANZAROOT="$INSTALLROOT/stanza"

( cd $STANZAROOT && ./stanza install -platform linux )
rm -f $BINDIR/stanza
ln -s $STANZAROOT/stanza $BINDIR

cat <<EOF >> .stanza
pkg-dirs = ("$STANZAROOT/pkgs")
fast-pkg-dirs = ("$STANZAROOT/fast-pkgs")
EOF
cat $HOME/.stanza

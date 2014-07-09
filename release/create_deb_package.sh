#!/bin/bash
#A debian package can be created calling this script inside the package
PACKAGE=mouse-speed
TMPFOLDER=/tmp/dpkg-packaging

echo
echo '#'cleaning up $TMPFOLDER and recreate it with the needed files

( set -x
rm -Rf $TMPFOLDER/$PACKAGE
: create build dir...
mkdir -p $TMPFOLDER/$PACKAGE/
: copy files...
cp -r DEBIAN $TMPFOLDER/$PACKAGE/
cp -r usr $TMPFOLDER/$PACKAGE/
: building package ...
cd $TMPFOLDER
dpkg-deb -z8 -Zgzip --build $TMPFOLDER/$PACKAGE
ls -lah $TMPFOLDER
)
echo install with:
echo sudo dpkg -i /tmp/dpkg-packaging/mouse-speed.deb

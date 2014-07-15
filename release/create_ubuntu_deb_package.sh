#!/bin/bash
# A Ubuntu debian package can be created calling this script inside the package

# SOURCEBINPATH=~
# SOURCEBIN=myscript.sh
# DEBFOLDER=~/somescripts
# DEBVERSION=0.1
SOURCEBINPATH=usr/bin
SOURCEBIN=mouse-speed
DEBFOLDER=release/PPA/mouse-speed
DEBIANDEFAULTS=../debian;
DEBVERSION=1.6

if [ ! -d "$SOURCEBINPATH" ]; then
  echo $SOURCEBINPATH not in current dir `pwd`
  echo this script has to be called in the main repository path
  exit 1
fi

( set -x

# cleaning up and recreate it with the needed files
#rm -Rf release/PPA/mouse-speed*

# Create your scripts source dir
mkdir -p "$DEBFOLDER"-$DEBVERSION

# Copy your script to the source dir
cp $SOURCEBINPATH/$SOURCEBIN "$DEBFOLDER"-$DEBVERSION 
cd "$DEBFOLDER"-$DEBVERSION

# Create the packaging skeleton (debian/*)
dh_make -s --indep --createorig
# doesn't work with -p "$SOURCEBIN"_$DEBVERSION

# Copy customized control and copyright to debian folder
cp $DEBIANDEFAULTS/control debian/
cp $DEBIANDEFAULTS/copyright debian/

# Remove make calls
grep -v makefile debian/rules > debian/rules.new 
mv debian/rules.new debian/rules 

# debian/install must contain the list of scripts to install 
# as well as the target directory
echo $SOURCEBIN usr/bin > debian/install 

# We don't want a quilt based package
echo "1.0" > debian/source/format 

# Remove the example files
rm debian/*.ex debian/*.EX debian/README.*

# set distribution and fix template in changelog:
sed -i 's/unstable/trusty/' debian/changelog
sed -i 's/Initial release (Closes: #nnnn)  <nnnn is the bug number of your ITP>/fixed package generation for Launchpad/'

# Build the package.
#debuild -us -uc -k'Ruben Barkow (launchpad) <ubuntu@spacetrace.org>'
debuild -k'Ruben Barkow (launchpad) <ubuntu@spacetrace.org>' -S

# creates the Packages.gz, containing all the needed informationen about your deb-packages
cd ../
dpkg-scanpackages . /dev/null |gzip > Packages.gz
)
# You  will get a lot of warnings and ../somescripts_0.1-1_i386.deb
echo install with:
echo sudo dpkg -i "$DEBFOLDER"_$DEBVERSION-1_all.deb
echo upload with:
echo LANG=c dput ppa:rubo77/ppa-mouse-speed ./$SOURCEBIN_$DEBVERSION-1_i386.changes

# Updating
# Apart renaming the directory and updating debian/changelog you must 
# create the .orig archive corresponding to the new version, 
# this is an archive form the source directory contents (without including debian/)
# cp $DEBFOLDER $DEBFOLDER.orig && rm -rf $DEBFOLDER.orig/debian && tar czvf "$SOURCEBIN"_$DEBVERSION.orig.tar.gz $DEBFOLDER.orig


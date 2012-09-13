#!/bin/sh
set -e -x

# installer for mummer
#
# create your base folder
mkdir -p /opt/mummer
cd /opt/mummer
# do the work
BASE_FOLDER=/opt/mummer
MUMMER_VERSION="MUMmer3.23"
# prereqs
yum -y install gnuplot transfig make perl g++ sed tcsh gawk binutils
# download mummer
wget http://resources.ohnosequences.com/MUMmer/$MUMMER_VERSION.tar.gz
tar -xzf $MUMMER_VERSION.tar.gz
rm $MUMMER_VERSION.tar.gz
cd $MUMMER_VERSION
# check, compile, install
make check
make
make install

# add to path
# links
ln -sf $BASE_FOLDER/$MUMMER_VERSION/mummer /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/mummerplot /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/run-mummer1 /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/run-mummer3 /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/promer /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/mummerplot /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/delta-filter /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/gaps /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/nucmer /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/mgaps /usr/bin/
ln -sf $BASE_FOLDER/$MUMMER_VERSION/show-* /usr/bin/

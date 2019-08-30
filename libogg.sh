#!/bin/bash
source dirs.sh

pushd $OGG_DIR
    ./autogen.sh
    ./configure --prefix=$PWD/install --enable-shared=no --host=arm-linux-gnueabihf
    make
    make install
popd

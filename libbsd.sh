#!/bin/bash
source dirs.sh

pushd $BSD_DIR
    ./configure --prefix=$PWD/install --enable-shared=no --host=arm-linux-gnueabihf
    make
    make install
popd

#!/bin/bash
source dirs.sh

pushd $ZLIB_DIR
    CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar ./configure --static --prefix=$PWD/install
    make
    make install
popd

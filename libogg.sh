#!/bin/bash

pushd $PWD/libogg-1.3.3
    ./autogen.sh
    ./configure --prefix=$PWD/install --enable-shared=no --host=arm-linux-gnueabihf
    make
    make install
popd

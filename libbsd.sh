#!/bin/bash

pushd $PWD/libbsd-0.10.0
    ./configure --prefix=$PWD/install --enable-shared=no --host=arm-linux-gnueabihf
    make
    make install
popd

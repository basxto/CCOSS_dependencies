#!/bin/bash

pushd $PWD/zlib-1.2.11
    CC=arm-linux-gnueabihf-gcc AR=arm-linux-gnueabihf-ar ./configure --static --prefix=$PWD/install
    make
    make install
popd

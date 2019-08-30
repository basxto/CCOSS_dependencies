#!/bin/bash

pushd $PWD/libvorbis-1.3.6
    export CFLAGS="-g"
    ./configure --prefix=$PWD/install --enable-shared=no --with-ogg=$PWD/../libogg-1.3.3/install --with-ogg-includes=$PWD/../libogg-1.3.3/include --host=arm-linux-gnueabihf
    make
    make install
popd

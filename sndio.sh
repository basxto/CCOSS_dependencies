#!/bin/bash
source dirs.sh

pushd $SNDIO_DIR
    ./configure --prefix=$PWD/install --disable-alsa CC=arm-linux-gnueabihf-gcc
    make
    make install
    cd $PWD/libsndio
    arm-linux-gnueabihf-ar rcs libsndio.a *.o
popd

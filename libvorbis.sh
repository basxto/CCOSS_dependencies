#!/bin/bash
source dirs.sh

pushd $VORBIS_DIR
    export CFLAGS="-g -I$OGG_DIR/include"
    ./configure --prefix=$PWD/install --enable-shared=no --with-ogg=$OGG_DIR/install --host=arm-linux-gnueabihf
    make
    make install
popd

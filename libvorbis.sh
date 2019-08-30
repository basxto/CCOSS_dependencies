#!/bin/bash
source dirs.sh

pushd $VORBIS_DIR
    export CFLAGS="-g"
    ./configure --prefix=$PWD/install --enable-shared=no --with-ogg=$OGG_DIR/install --with-ogg-includes=$OGG_DIR/include --host=arm-linux-gnueabihf
    make
    make install
popd

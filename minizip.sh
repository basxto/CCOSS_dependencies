#!/bin/bash
source dirs.sh

pushd $MINIZIP_DIR
    mkdir build
    cd build
    cmake -DCMAKE_TOOLCHAIN_FILE=$PWD/../../arm-linux-gnueabihf-toolchain.cmake -DCMAKE_INSTALL_PREFIX=$PWD/../install ../
    # no idea why
    cp ZLIB_DIR/*.h .
    make
    make install
popd
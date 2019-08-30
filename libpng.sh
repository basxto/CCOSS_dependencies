#!/bin/bash
source dirs.sh

pushd $PNG_DIR
    ./configure --prefix=$PWD/install --enable-shared=no --with-sysroot=$ZLIB_DIR/install --host=arm-linux-gnueabihf CPPFLAGS="-I$ZLIB_DIR/install/include" LDFLAGS="-L$ZLIB_DIR/install/lib"
    make
    make install
popd

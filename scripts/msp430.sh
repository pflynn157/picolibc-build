function build_msp430() {
    echo ""
    echo "Building MSP430 build..."
    echo ""

    cd $BUILD/msp430
    $ROOT/picolibc/scripts/do-msp430-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
            -Dspecsdir=$INSTALL_PREFIX/picolibc/msp430 \
            -Dsysroot-install=false \
            -Dsystem-libc=false \
            -Dfreestanding=true \
            -Dsemihost=false \
            -Dmultilib=false
    ninja -j12
    ninja install
}


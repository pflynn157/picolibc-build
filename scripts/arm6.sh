function build_arm6() {
    echo ""
    echo "Building ARM6 build..."
    echo ""

    cd $BUILD/arm6
    $ROOT/picolibc/scripts/do-gcc-arm6-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
            -Dspecsdir=none \
            -Dtests=false \
            -Dtests-cdefs=false \
            -Dnative-math-tests=false \
            -Dsemihost=false \
            -Dpicocrt=false \
            -Dpicocrt-enable-mmu=false \
            -Dpicocrt-lib=false \
            -Dinitfini-array=false
    ninja -j12
    ninja install
}


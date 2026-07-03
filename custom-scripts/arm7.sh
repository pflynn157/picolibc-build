function build_arm7() {
    echo ""
    echo "Building ARM7 build..."
    echo ""

    cd $BUILD/arm7
    $ROOT/picolibc/scripts/do-gcc-arm7-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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


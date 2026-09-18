function build_rv32imfd() {
    echo ""
    echo "Building RISC-V 32 IMFD build..."
    echo ""

    cd $BUILD/rv32imfd
    $ROOT/picolibc/scripts/do-rv32imfd-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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


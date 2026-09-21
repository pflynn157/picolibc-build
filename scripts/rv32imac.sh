function build_rv32imac() {
    echo ""
    echo "Building RISC-V 32 IM build..."
    echo ""

    cd $BUILD/rv32imac
    $ROOT/picolibc/scripts/do-rv32imac-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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

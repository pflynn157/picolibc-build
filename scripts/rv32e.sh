function build_rv32e() {
    echo ""
    echo "Building RISC-V 32 E build..."
    echo ""

    cd $BUILD/rv32e
    $ROOT/picolibc/scripts/do-rv32e-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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

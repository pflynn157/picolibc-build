function build_rv64imac() {
    echo ""
    echo "Building RISC-V 64 IM build..."
    echo ""

    cd $BUILD/rv64imac
    $ROOT/picolibc/scripts/do-rv64imac-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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

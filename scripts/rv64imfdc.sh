function build_rv64imfdc() {
    echo ""
    echo "Building RISC-V 64 IMFDC build..."
    echo ""

    cd $BUILD/rv64imfdc
    $ROOT/picolibc/scripts/do-rv64imfdc-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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

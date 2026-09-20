function build_rv32imc() {
    echo ""
    echo "Building RISC-V 32 IMC build..."
    echo ""

    cd $BUILD/rv32imc
    $ROOT/picolibc/scripts/do-rv32imc-configure -Dprefix=$INSTALL_PREFIX -Dformat-default=double \
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

SRC_DIR=$(pwd)
TC_DIR=/home/arminas/test/clangg
JOBS=$(nproc)
MAKE_PARAMS="-j$JOBS -C $SRC_DIR O=$SRC_DIR/out ARCH=arm64 CC=clang CLANG_TRIPLE=aarch64-linux-gnu- LLVM=1 CROSS_COMPILE=$TC_DIR/bin/llvm-"
export PATH="$TC_DIR/bin:$PATH"
make $MAKE_PARAMS vendor/a52sxq_eur_open_defconfig
make $MAKE_PARAMS

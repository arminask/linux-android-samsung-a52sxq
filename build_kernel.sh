CLANG_DIRECTORY=$(pwd)/../clangnew
GCC_DIRECTORY=$(pwd)/../gcc/aarch64-linux-android
JOBS=$(( `nproc` - 1 ))
export PATH=$CLANG_DIRECTORY/bin:$PATH
export ARCH=arm64
export LLVM=1
mkdir out
make -j$JOBS -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=$GCC_DIRECTORY/bin/aarch64-linux-android- REAL_CC=$CLANG_DIRECTORY/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- vendor/a52sxq_eur_open_defconfig
make -j$JOBS -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=$GCC_DIRECTORY/bin/aarch64-linux-android- REAL_CC=$CLANG_DIRECTORY/bin/clang CLANG_TRIPLE=aarch64-linux-gnu-
$CLANG_DIRECTORY/bin/llvm-strip -S $(pwd)/out/*.ko

BINUTILS_VERSION="2.24"
GCC_VERSION="8.3.0"

export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

mkdir GevCrossCompilerSource
cd GevCrossCompilerSource

wget https://ftp.gnu.org/gnu/binutils/binutils-$BINUTILS_VERSION.tar.gz
wget https://ftp.gnu.org/gnu/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.gz

tar -xzf binutils-$BINUTILS_VERSION.tar.gz
tar -xzf gcc-$GCC_VERSION.tar.gz
rm binutils-$BINUTILS_VERSION.tar.gz
rm gcc-$GCC_VERSION.tar.gz

mkdir build-binutils
cd build-binutils

../binutils-$BINUTILS_VERSION/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install

cd ../

mkdir build-gcc
cd build-gcc

../gcc-$GCC_VERSION/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c,c++ --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc

cd ../../

$HOME/opt/cross/bin/$TARGET-gcc --version



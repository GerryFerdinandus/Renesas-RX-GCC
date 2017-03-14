#!/bin/bash

# GDB is not created because it is not needed for the Travis-ci build server

# copyed from https://gcc-renesas.com/wiki/index.php?title=How_to_build_the_RX_Toolchain_under_Ubuntu_14.04

#update the linux 14.04
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential flex bison texinfo libncurses5-dev m4 p7zip-full -y

cd $HOME

#remove older folder
rm -rf RX-Toolchain 

#Create a new folder for the toolchain 
mkdir RX-Toolchain

#Change the current directory to RX-Toolchain 
cd RX-Toolchain

#Create 3 new folders : source, build, prefix 
mkdir source
mkdir build
mkdir prefix

#Download the source codes for Binutils-RX, Newlib-RX, GCC-RX
# and rename it to generic name
cd source
wget -O binutils.zip https://gcc-renesas.com/downloads/d.php?f=rx/binutils/4.8.4.201604-gnurx/binutils_2.24_RX_2016q4.zip
wget -O newlib.zip https://gcc-renesas.com/downloads/d.php?f=rx/newlib/4.8.4.201604-gnurx/newlib_2.2.0_RX_2016q4.zip
wget -O gcc.zip https://gcc-renesas.com/downloads/d.php?f=rx/gcc/4.8.4.201604-gnurx/gcc_4.8.4_RX_2016q4.zip

#extract to generic folder name
7z x binutils.zip
7z x newlib.zip
7z x gcc.zip

#INSTALL BINUTILS-RX
#Create a new folder for binutils and change the current directory to it: 
cd ../build
mkdir binutils
cd binutils

#Configure and make
sh $HOME/RX-Toolchain/source/binutils/configure --target=rx-elf --prefix=$HOME/RX-Toolchain/prefix/ --enable-maintainer-mode --disable-werror 
make -j2
make install

#Return to the build directory 
cd ..

#Export path 
export PATH="$HOME/RX-Toolchain/prefix/bin:$PATH"

#INSTALL GCC-RX
#Change the current directory to GCC source folder
cd ../source/gcc
#download prerequisites
sh ./contrib/download_prerequisites

#Return to the build directory
cd ../../build

#Create a new folder for gcc and change the current directory to it
mkdir gcc
cd gcc

#Configure and make
sh $HOME/RX-Toolchain/source/gcc/configure --target=rx-elf --prefix=$HOME/RX-Toolchain/prefix/ --enable-languages=c,c++ --disable-shared --with-newlib --enable-lto --enable-gold --disable-libstdcxx-pch --with-pkgversion=GCC_Build_1.02

make all-gcc -j2
make install-gcc

#Return to the build directory 
cd ..

#Export path 
export PATH="$HOME/RX-Toolchain/prefix/bin:$PATH"


#INSTALL Newlib-RX
#Create a new folder for newlib and change the current directory to it: 
mkdir newlib
cd newlib


sh $HOME/RX-Toolchain/source/newlib/configure --target=rx-elf --prefix=$HOME/RX-Toolchain/prefix/
make -j2
make install


#Return to the build directory 
cd ..


#Build the final GCC 
cd gcc
make -j2
make install


#compress GCC files to tar.xz file. Release the entire prefix folder.
cd $HOME/RX-Toolchain

XZ_OPT=-9 tar cJf gcc_rx.tar.xz prefix




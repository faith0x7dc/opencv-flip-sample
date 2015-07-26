#!/bin/bash

###
### Configuration
###

# GLSDK path
GLSDK=${HOME}/ti-glsdk_dra7xx-evm_6_04_00_02

# Sysroot path
SYSROOT=${GLSDK}/yocto-layers/build/arago-tmp-external-linaro-toolchain/sysroots/dra7xx-evm

# Cross compiler path
CROSS_COMPILER_PATH=${HOME}/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin

# Cross compiler prefix
CROSS_COMPILE=arm-linux-gnueabihf-

# Add Cross compiler path into PATH
PATH=${CROSS_COMPILER_PATH}:${PATH}

CXX=${CROSS_COMPILE}g++
CXXFLAGS="--sysroot=${SYSROOT}"
LDFLAGS="--sysroot=${SYSROOT}"

export CROSS_COMPILE
export PATH

###
### Main routine
###

CXX=${CXX} \
CXXFLAGS="${CXXFLAGS}" \
LDFLAGS="${LDFLAGS}" \
make $*


#!/bin/bash

## Setup the global environment.
ROOT=`pwd`
PATH="/opt/msp430-gcc/bin:$PATH"
export PATH="$ROOT/tools:$ROOT/build/rivet:$PATH"
BUILD=build

## Copy the architecture configurations over to picolibc so it can find
## them easily.
cp -rv ./scripts/picolibc/cross/* picolibc/scripts

## Set the install and build prefixes. These will apply to every build configuration
## below.
INSTALL_PREFIX=$HOME
BUILD=$ROOT/build/picolibc

## Create all the build directories.
mkdir -p $BUILD
mkdir -p $BUILD
mkdir -p $BUILD/arm6
mkdir -p $BUILD/arm7
mkdir -p $BUILD/rv32im
mkdir -p $BUILD/rv32imfd
mkdir -p $BUILD/msp430

# Source the functions for the individual picolibc build configurations.
# Please add any additional configurations to these files, and call them below.
source scripts/picolibc/arm6.sh
source scripts/picolibc/arm7.sh
source scripts/picolibc/msp430.sh
source scripts/picolibc/rv32im.sh
source scripts/picolibc/rv32imfd.sh

# Build each configuration.
# If you are doing development, you can comment out the ones you don't need.
build_rv32im
build_rv32imfd
build_arm7
build_arm6
build_msp430

##
## All done!
##
cd $ROOT

echo ""
echo "Done!"
echo ""


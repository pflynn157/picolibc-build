#!/bin/bash

## Setup the global environment.
ROOT=`pwd`
PATH="/opt/msp430-gcc/bin:$PATH"
export PATH="$ROOT/tools:$PATH"
BUILD=build

## Copy the architecture configurations over to picolibc so it can find
## them easily.
cp -rv ./scripts/cross/* ./picolibc/scripts

## Set the install and build prefixes. These will apply to every build configuration
## below.
INSTALL_PREFIX=$ROOT/bin
BUILD=$ROOT/build/picolibc

## Create all the build directories.
mkdir -p $BUILD
mkdir -p $BUILD/arm6
mkdir -p $BUILD/arm7
mkdir -p $BUILD/rv32im
mkdir -p $BUILD/rv32imc
mkdir -p $BUILD/rv32imac
mkdir -p $BUILD/rv32imfd
mkdir -p $BUILD/rv64im
mkdir -p $BUILD/rv64imac
mkdir -p $BUILD/rv64imfdc
mkdir -p $BUILD/msp430

# Source the functions for the individual picolibc build configurations.
# Please add any additional configurations to these files, and call them below.
source scripts/arm6.sh
source scripts/arm7.sh
source scripts/msp430.sh
source scripts/rv32im.sh
source scripts/rv32imc.sh
source scripts/rv32imac.sh
source scripts/rv32imfd.sh
source scripts/rv64im.sh
source scripts/rv64imac.sh
source scripts/rv64imfdc.sh

# Build each configuration.
# If you are doing development, you can comment out the ones you don't need.
#build_rv32im
#build_rv32imfd
#build_rv32imc
build_rv32imac
#build_rv64im
build_rv64imac
#build_rv64imfdc
#build_arm7
#build_arm6
#build_msp430

##
## All done!
##
cd $ROOT

echo ""
echo "Done!"
echo ""

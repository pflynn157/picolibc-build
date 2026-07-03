#!/bin/bash

echo "Installing to /opt/picolibc"

if [ ! -d ./bin/picolibc ]
then
    echo "Error: Picolibc does not seem to be built."
    exit 1
fi

if [ ! -d /opt/picolibc ]
then
    sudo mkdir /opt/picolibc
fi

sudo cp -rv ./bin/picolibc/* /opt/picolibc

echo "Done"

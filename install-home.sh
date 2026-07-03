#!/bin/bash

echo "Installing to $HOME/picolibc"

if [ ! -d ./bin/picolibc ]
then
    echo "Error: Picolibc does not seem to be built."
    exit 1
fi

if [ ! -d $HOME/picolibc ]
then
    mkdir $HOME/picolibc
fi

cp -rv ./bin/picolibc/* $HOME/picolibc

echo "Done"

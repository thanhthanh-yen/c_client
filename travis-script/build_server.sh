#!/bin/sh -xe

export CC=gcc-4.8
export CC_FOR_BUILD=gcc-4.8
export CXX=g++-4.8
export CXX_FOR_BUILD=g++-4.8

# build server
./bootstrap.sh
./configure
make

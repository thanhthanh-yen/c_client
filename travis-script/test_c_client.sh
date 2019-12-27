#!/bin/sh -xe

# run sample
cp client/c/sample/sample1.c .
gcc-4.8 -I./client/c/include -L./bin sample1.c -l gridstore
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:./bin
./a.out 239.0.0.1 31999 griddbubuntu admin admin

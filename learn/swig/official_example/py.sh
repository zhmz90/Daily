#!/bin/bash

swig -python example.i

gcc -fpic -c example.c example_wrap.c -I/home/guo/anaconda/include/python2.7

ld -shared example.o example_wrap.o -o _example.so

#!/bin/bash

# dts to dtb
# usage: ./dts-to-dtb.sh <input dts file> <output dtb file>
dtc -I dts -O dtb $1 -o $2

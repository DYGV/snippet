#!/bin/bash

# dtb to dts
# usage: ./dtb-to-dts.sh <input dtb file> <input dts file> 
dtc -I dtb -O dts $1 -o $2

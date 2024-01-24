#!/bin/bash

# Write image to SD card
# must be run as root
# usage: ./sd-card-write.sh
# requires: a.img, sd card mounted at /dev/sdd

dd bs=4M status=progress conv=sync if=./a.img of=/dev/sdd

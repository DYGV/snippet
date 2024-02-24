#!/bin/bash

# This script is used to mount the image file to the loop device.
# The loop device is used to access the image file as a block device.
# Usage: sudo ./sd-img-losetup-attach.sh <image-file>

loop_device=$(losetup -fP ${1} --show)
echo "Attached image file to loop device: ${loop_device}"


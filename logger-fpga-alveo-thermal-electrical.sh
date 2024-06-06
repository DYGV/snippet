#!/bin/bash

# This script is used to log the FPGA temperature and power usage of the Alveo card.
# This script is run on the host machine and uses xbutil to get the temperature and power usage.
# "-d 0000:01:00.1" is the PCIe bus number of the Alveo card. This can be found using lspci -v.

count=0
while true
do
  count=`expr $count + 1`
  date=`date +%Y-%m-%d-%H:%M:%S.%3N`
  examine=$(/opt/xilinx/xrt/bin/xbutil examine -r thermal electrical -d  0000:01:00.1)
  fpga_temp=$(echo "$examine" | grep 'FPGA' |awk '{print $3}' |  sed -e 's/[^0-9]//g' | tr -d '\n')
  power_usage=$(echo "$examine" | grep 'Power' |awk '{print $3}' | tr -d '\n' |  sed -e 's/[^0-9.]//g')
  printf "$date, $fpga_temp C, %.1f W\n" "$power_usage"
done

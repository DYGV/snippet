#!/bin/bash

# This script outputs power consumption and GPU utilization in CSV format every 100 milliseconds

nvidia-smi \
--loop-ms=100 \
--query-gpu=timestamp,utilization.gpu,utilization.memory,memory.total,temperature.gpu,power.draw,power.limit \
--format=csv

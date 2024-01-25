#!/bin/bash

# watch writing progress of dirty pages to disk
watch grep -e Dirty: -e Writeback: /proc/meminfo

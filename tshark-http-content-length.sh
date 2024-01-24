#!/bin/bash

# extact http content length from pcap file
# you shuld change ip.addr to ip address which you want to filter

tshark -r ./mecrm-http-packet.pcapng -Y "http.content_length and ip.addr==192.168.0.132" -T fields -e ip.src -e ip.dst -E header=y -e http.content_type -e http.content_length

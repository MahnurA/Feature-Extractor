#!/bin/bash
tshark -T fields -e frame.number -e frame.time -e tcp.len -e ip.src -e ip.dst -e ip.proto -e tcp.srcport -e tcp.dstport -e tcp.flags.syn -e tcp.flags.ack -e tcp.flags.push -e tcp.flags.reset -e tcp.flags.fin -e tcp.window_size -e tcp.stream -E header=y -E separator=, -E quote=d -E occurrence=f > file.csv

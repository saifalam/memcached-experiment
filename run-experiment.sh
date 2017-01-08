#!/bin/bash


rate=$1 

mcperf -s server -N ${rate} -n 10 -R ${rate} -r 10 >&2 2> out.txt
REQPERSEC=$(cat out.txt | grep "Response rate" | awk '{print $3}')
LATENCY=$(cat out.txt | grep "Response time \[ms\]: avg" | awk '{print $5}')

echo "response latency"
echo "${REQPERSEC} ${LATENCY}"



#!/bin/bash

base="cillocoin2/configs/"

for i in $(seq 1 9)
do
  path="$base$i"
  cillocoin/src/cillocoin-cli -datadir=$path stop
  sleep 0.1
done

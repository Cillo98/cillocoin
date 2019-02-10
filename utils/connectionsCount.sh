#!/bin/bash

base="cillocoin2/configs/"

for i in $(seq 1 9)
do
  path="$base$i"
  echo "Node $i is connected to these many nodes:"
  cillocoin/src/cillocoin-cli -datadir=$path getconnectioncount
  echo ""
done

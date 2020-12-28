#!/usr/bin/env bash

COMECA=0
ATE=100

[ $COMECA -ge $ATE ] && exit 1

for i in $(seq $COMECA $ATE); do
  for j in $(seq $i $ATE); do
    printf "*";
  done;
  printf "\n";
done
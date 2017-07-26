#!/bin/sh
# Filename: tested.sh

for x
do
    sed -f sedscr $x > tmp.$x
    diff $x tmp.$x
done

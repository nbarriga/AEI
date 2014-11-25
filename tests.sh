#!/bin/bash

for i in $@ ; do
    cat "$i"|grep ^s
    cat "$i"|grep ^g
    cat "$i"|grep cangoal
    PYTHONPATH=./build/lib/ ./pyrimaa/analyze.py $i
done

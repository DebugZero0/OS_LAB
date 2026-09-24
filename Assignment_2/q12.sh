#!/bin/bash

echo "All possible combinations of 3 numbers (1-9):"

for ((i=1; i<=7; i++))
do
    for ((j=i+1; j<=8; j++))
    do
        for ((k=j+1; k<=9; k++))
        do
            echo "$i $j $k"
        done
    done
done

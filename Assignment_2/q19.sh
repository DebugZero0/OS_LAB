#!/bin/bash

is_prime() {
    num=$1

    if [ $num -lt 2 ]
    then
        return 1
    fi

    for ((j=2; j*j<=num; j++))
    do
        if [ $((num % j)) -eq 0 ]
        then
            return 1
        fi
    done

    return 0
}

echo "Enter range (l r):"
read l r

for ((i=l; i<=r; i++))
do
    if is_prime $i
    then
        echo -n "$i "
    fi
done

echo

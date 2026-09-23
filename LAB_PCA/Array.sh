#!/bin/bash

# Read array from user
echo "Enter array elements (space separated):"
read -a arr

# Print all elements
echo "Array: ${arr[@]}"

# Length of array
echo "Size: ${#arr[@]}"

# Access first and last element
echo "First element: ${arr[0]}"
echo "Last element: ${arr[${#arr[@]}-1]}"

# Update second element
arr[1]=100
echo "After updating second element: ${arr[@]}"

# Add new element
arr+=(500)
echo "After adding 500: ${arr[@]}"

# Slice array (3 elements from index 1)
echo "Slice (index 1, length 3): ${arr[@]:1:3}"

# Traverse array
echo "Elements using loop:"
for i in "${arr[@]}"
do
    echo "$i"
done

# Find largest element
max=${arr[0]}
for i in "${arr[@]}"
do
    if [ $i -gt $max ]
    then
        max=$i
    fi
done
echo "Largest element: $max"

# Delete third element
unset arr[2]
echo "After deleting third element: ${arr[@]}"

# Reverse array
echo -n "Reverse array: "
for ((i=${#arr[@]}-1; i>=0; i--))
do
    echo -n "${arr[$i]} "
done
echo

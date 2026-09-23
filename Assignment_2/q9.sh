arr=( 1 2 3 4 5 )

echo "Enter position:"
read n
pos=$((n-1))
unset arr["$pos"]
echo "${arr[@]}"

echo "Enter number"
read num

echo "Enter source base:"
read to

echo "Enter target base"
read target

dec=$(($to#$num))

result=$(echo "obase=$target;$dec" | bc)
echo "Result is : $result"

# To connvert to decimal -> base#number

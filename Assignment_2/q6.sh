echo "Enter elements (seperated by space)"
read -a arr

max=${arr[0]}
min=${arr[0]}

for i in "${arr[@]}"
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done

echo "Largest : $max"
echo "Smallest : $min"


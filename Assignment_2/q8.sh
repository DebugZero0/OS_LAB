#Bubble sort

echo "Enter elements:"
read -a arr

for((i=0;i<${#arr[@]}-1;i++))
do
	for((j=0;j<${#arr[@]}-1-i;j++))
	do
		if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
		then
			temp=${arr[j]}
			arr[j]=${arr[$((j+1))]}
			arr[$((j+1))]=$temp
		fi
	done
done

printf "%s " "${arr[@]}"


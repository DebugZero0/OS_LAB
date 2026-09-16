echo "Enter a number to check prime"
read n

count=0

for((i=2;i<n;i++))
do
	if [ $((n%i)) -eq 0 ]
	then
		count=1
		break
	fi
done

if [ $count -eq 0 ]
then
	echo "Prime"
else
	echo "Not Prime"
fi



echo "Enter a number"
read n

p=1
while [ $n -ge 1 ]
do
	p=$((p*n))
	n=$((n-1))
done

echo "Factorial = $p"

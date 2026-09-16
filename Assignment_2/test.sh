echo "Hello world!"

name="Ankan"
roll=44

echo "Hello $name ; Roll : $roll"

#User i/p else if

echo "Enter 2 nos"
read a b

if [ $a -lt $b ]
then
	echo "A Small"
elif [ $a -eq $b ]
then
	echo "Equal"
else
	echo "B small"
fi

#Loop print

echo "Enter a number"
read n

while [ $n -ge 0 ]
do
	echo $n
	n=$((n-1))
done

#Parameterized Function

sum(){
	result=$(($1+$2))
	echo $result
}

sum 10 20

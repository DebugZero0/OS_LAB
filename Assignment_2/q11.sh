echo "Enter a number:"
read n

temp=$n
sum=0

while [ $temp -gt 0 ]
do
    rem=$((temp % 10))
    sum=$((sum + rem * rem * rem))
    temp=$((temp / 10))
done

if [ $sum -eq $n ]
then
    echo "Armstrong Number"
else
    echo "Not Armstrong Number"
fi

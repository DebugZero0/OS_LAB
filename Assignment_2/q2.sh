

echo "Enter a string:"
read str

reverse=$(echo "$str" | rev)

if [ "$str" = "$reverse" ]
then
    echo "Palindrome"
else
    echo "Not Palindrome"
fi


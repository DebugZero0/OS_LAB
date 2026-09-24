echo "Enter text:"
read text

echo "Words = $(echo "$text" | wc -w)"
echo "Characters = $(echo -n "$text" | wc -m)"
echo "Spaces = $(echo -n "$text" | tr -cd ' ' | wc -c)"
echo "Special Symbols = $(echo -n "$text" | tr -cd '[:punct:]' | wc -c)"

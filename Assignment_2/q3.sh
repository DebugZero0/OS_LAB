echo "Enter file name"
read -r file

echo "Enter starting line"
read -r s

echo "Enter last line"
read -r l

sed -n "${s},${l}p" "$file"

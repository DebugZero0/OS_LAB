echo "Enter numbers:"
read -a arr

printf "%s\n" "${arr[@]}" | sort -nr | xargs

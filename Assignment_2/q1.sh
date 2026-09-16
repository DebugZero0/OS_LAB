while true
do
	echo "1.Merge two content"
	echo "2.Search for pattern"

	echo "Enter choice: "
	read ch

	case "$ch" in

	1)
		read -r file1.txt file_2.txt file_3.txt
		cat "$file_1.txt" "$file_2.txt" > "file_3.txt"
		echo "File merged successfully..."
	;;

	2)
		echo "Hello 2"
	;;

	3)
		echo "Exiting ..."
		break
	;;

	*)
		echo "Invalid choice"
	esac
	echo
done


while true
do
	echo "1.Merge two content"
	echo "2.Search for pattern"
	echo "3.Exit..."
	echo "Enter choice: "
	read ch

	case "$ch" in

	1)
		cat "file_1.txt" "file_2.txt" > "file_3.txt"
		echo "File merged successfully..."
	;;

	2)
		echo "Enter city"
		read pattern
		grep  -i "$pattern" file_1.txt
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


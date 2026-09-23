while true
do
    echo "1.Display the content"
    echo "2.Display info"
    echo "3.Delete entry"
    echo "4.Add entry"
    echo "5.Update entry"
    echo "6.Exit"

    echo "Enter choice:"
    read ch

    case "$ch" in
    1)
        cat file_3.txt
        ;;

    2)
        echo "Enter roll no:"
        read roll
        grep "^0*$roll|" file_3.txt
        ;;

    3)
        echo "Enter roll no:"
        read roll
        sed -i "/^0*$roll|/d" file_3.txt
        echo "Entry deleted successfully..."
        ;;

    4)
        echo "Enter Name:"
        read name
        echo "Enter Roll:"
        read roll
        echo "Enter Place:"
        read place

        echo "$roll|$name|$place" >> file_3.txt
        sort -t "|" -k1,1n file_3.txt -o file_3.txt
        echo "Entry added."
        ;;

    5)
        echo "Enter roll no to update:"
        read roll

        sed -i "/^0*$roll|/d" file_3.txt

        echo "Enter new Name:"
        read name
        echo "Enter new Place:"
        read place

        echo "$roll|$name|$place" >> file_3.txt
        sort -t "|" -k1,1n file_3.txt -o file_3.txt
        echo "Entry updated."
        ;;

    6)
        echo "Exiting..."
        break
        ;;

    *)
        echo "Invalid choice."
        ;;
    esac

    echo
done

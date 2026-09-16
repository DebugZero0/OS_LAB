echo "Enter two numbers:"
read a b

echo "Choose Operation (+ - * /)"
read op

case $op in
+)
    echo "Result = $((a+b))"
    ;;
-)
    echo "Result = $((a-b))"
    ;;
\*)
    echo "Result = $((a*b))"
    ;;
/)
    echo "Result = $((a/b))"
    ;;
*)
    echo "Invalid Choice"
    ;;
esac

# power case is important

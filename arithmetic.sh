echo "Welcome to Sorting Arithmetic Computation Problem"

#UC1
echo "Write program totake three inputs–a, b & c"
read -p "Enter a:" a
read -p "Enter b:" b
read -p "Enter c:" c

#UC2
echo "Compute a + b * c"
expr1=`expr $a + $b '*' $c`
echo $expr1



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

#UC3
echo "Compute a * b + c"
expr2=`expr $a '*' $b + $c`
echo $expr2

#UC4
echo "Compute c + a / b"
expr3=`expr $c + $a / $b`
echo $expr3

#UC5
echo "Compute a % b + c"
expr4=`expr $a % $b + $c`
echo $expr4

#UC6
echo "Store the results in a Dictionary for every Computation"
declare -A dictionary=( ["key1"]=$expr1 ["key2"]=$expr2 ["key3"]=$expr3 ["key4"]=$expr4)
echo "dictionary is ${dictionary[@]}"

#UC7
echo "Read the values from the Dictionary into the array"
Array=([0]=$expr1 [1]=$expr2 [2]=$expr3 [3]=$expr4)
echo ${Array[*]}

#UC8
echo "Sort the results to show the Computation Result in the Descending Order"
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${Array[$i]} -lt ${Array[$j]}  ]; then
           t=${Array[$i]}
           Array[$i]=${Array[$j]}
           Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in descending Order:"
for (( i=0; i < 4; i++ ))
do
  echo ${Array[$i]}
done

#UC9
echo "Sort the results to show the Computation Value in Ascending Order"
for (( i = 0; i < 4 ; i++ ))
do
   for (( j = $i; j < 4; j++ ))
   do
      if [ ${Array[$i]} -gt ${Array[$j]}  ]; then
           t=${Array[$i]}
           Array[$i]=${Array[$j]}
           Array[$j]=$t
      fi
   done
done

echo -e "\nSorted Numbers in Ascending Order:"
for (( i=0; i < 4; i++ ))
do
  echo ${Array[$i]}
done

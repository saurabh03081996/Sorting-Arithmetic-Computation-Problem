#! /bin/bash -x

echo "Welcome to Arithmetic computation and sorting"
read -p "Enter three number a,b,c: " a b c

compute1=$(($a+$b*$c))
echo $compute1

compute2=$(($a*$b+$c))
echo $compute2

compute3=$(($c+$a/$b))
echo $compute3

compute4=$(($a%$b+$c))
echo $compute4

result[0]=$compute1
result[1]=$compute2
result[2]=$compute3
result[3]=$compute4

echo "Storing result in dictionary: ${!result[@]}"
echo "The result in Dictionary: ${result[@]}"

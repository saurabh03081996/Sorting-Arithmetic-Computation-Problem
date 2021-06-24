#! /bin/bash 

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

echo "Before sorting result is: ${result[@]}"
for (( i=0;i<4;i++ ))
do
	for (( j=i+1;j<4;j++ ))
	do
		if [[ ${result[i]} -lt ${result[$((j))]} ]]
		then
			temp=${result[i]}
			result[$i]=${result[$((j))]}
			result[$((j))]=$temp
		fi
	done
done

echo "After sorting result in Dictionary in desc order: ${result[@]}"

for (( i=0;i<4;i++ ))
do
        for (( j=i+1;j<4;j++ ))
        do
                if [[ ${result[i]} -gt ${result[$((j))]} ]]
                then
                        temp=${result[i]}
                        result[$i]=${result[$((j))]}
                        result[$((j))]=$temp
                fi
        done
done

echo "After sorting result in Dictionary in asc order: ${result[@]}"



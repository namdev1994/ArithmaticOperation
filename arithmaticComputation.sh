declare -A arithmaticOperation

read -p "Enter the frist input :" fristInput
read -p "Enter the second input :" secondInput
read -p "Enter the third input :" thirdInput
result1=$(($fristInput+$secondInput*$thirdInput))
echo $result1
result2=$(($fristInput*$secondInput+$thirdInput))
echo $result2
result3=$(($thirdInput+$fristInput/$secondInput))
echo $result3
result4=$(($fristInput%$secondInput+$thirdInput))
echo $result4

arithmaticOperation[result1]=$result1
arithmaticOperation[result2]=$result2
arithmaticOperation[result3]=$result3
arithmaticOperation[result4]=$result4
echo ${arithmaticOperation[@]}
for((i=0; i<=${#arithmaticOperation[@]}; i++))
do
  array[i]=${arithmaticOperation[result$((i+1))]}
done
#TO PRINT
echo "${array[@]}"

function descendingOrderSort()
{
	for(( index=0; index<${#array[@]}; index ++ ))
	do
		for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
		do
			if [ ${array[indexOne+1]} > ${array[indexOne]} ]
			then
				temp=${array[indexOne]}
				array[indexOne]=${array[indexOne+1]}
				array[indexOne+1]=$temp
			fi
		done
	done
	echo "To data descending order" ${array[@]}
}

#TO FUNCTION CALL FOR SORTING IN DECENDING ORDER
descendingOrderSort ${array[@]}


function ascendingOrderSort()
{
   for(( index=0; index<${#array[@]}; index ++ ))
   do
      for(( indexOne=0; indexOne<${#array[@]}-1; indexOne ++ ))
      do
         if [ ${array[indexOne+1]} < ${array[indexOne]} ]
         then
            temp=${array[indexOne]}
            array[indexOne]=${array[indexOne+1]}
            array[indexOne+1]=$temp
         fi
      done
   done
   echo "To data ascending order:"${array[@]}
}

#TO FUNCTION CALL FOR SORTING IN ASCENDING ORDER
ascendingOrderSort ${array[@]}

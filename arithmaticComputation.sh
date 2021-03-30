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

declare -A arithmaticOperation

read -p "Enter the frist input :" fristInput
read -p "Enter the second input :" secondInput
read -p "Enter the third input :" thirdInput
result=$(($fristInput+$secondInput*$thirdInput))
echo $result
result1=$(($fristInput*$secondInput+$thirdInput))
echo $result1
result2=$(($thirdInput+$fristInput/$secondInput))
echo $result2
result3=$(($fristInput%$secondInput+$thirdInput))
echo $result3

arithmaticOperation[result]=$result
arithmaticOperation[result1]=$result1
arithmaticOperation[result2]=$result2
arithmaticOperation[result3]=$result3
echo ${arithmaticOperation[@]}

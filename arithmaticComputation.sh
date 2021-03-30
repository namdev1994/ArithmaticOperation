read -p "Enter the frist input :" fristInput
read -p "Enter the second input :" secondInput
read -p "Enter the third input :" thirdInput
result=$(($fristInput+$secondInput*$thirdInput))
echo $result
result1=$(($fristInput*$secondInput+$thirdInput))
echo $result1
result2=$(($thirdInput+$fristInput/$secondInput))
echo $result2

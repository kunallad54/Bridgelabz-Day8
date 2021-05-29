#! /bin/bash -x

#Problem 1: Write a program in the following steps
#	 a. Roll a die and find the number between 1 to 6
#	 b. Repeat the Die roll and find the result each time
#	 c. Store the result in a dictionary
#	 d. Repeat till any one of the number has reached 10 times
# 	 e. Find the number that reached maximum times and the one that was for minimum times


declare -A dice
#rollingDice=$((RANDOM%6 +1))
#dice[value]=$rollingDice
#result=${dice[*]}
#echo $result
oneCount=0
twoCount=0
threeCount=0
fourCount=0
fiveCount=0
sixCount=0
while [ 1 ]
do
	rollingDice=$((RANDOM%6 +1))
	dice[value]=$rollingDice
	result=${dice[*]}

	case $result in
		1)
			oneCount=$((OneCount + 1))
			if [ $oneCount -eq 10 ]
			then
				echo "The number which has repeated 10 times is 1"
				break
			fi
			;;
		2)
			twoCount=$((twoCount + 1))
			if [ $twoCount -eq 10 ]
                        then
				echo "The number which has repeated 10 time is 2"
                                break
                        fi
			;;
		3)
			threeCount=$((threeCount + 1))
			if [ $threeCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 3"
                                break
                        fi
			;;
		4)
			fourCount=$((fourCount + 1))
			if [ $fourCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 4"
                                break
                        fi
			;;
		5)
			fiveCount=$((fiveCount + 1))
			if [ $fiveCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 5"
                                break
                        fi
			;;
		6)
			sixCount=$((sixCount + 1))
			if [ $sixCount -eq 10 ]
                        then
                                echo "The number which has repeated 10 time is 6"
                                break
                        fi
			;;
	esac
done
declare -A diceCount
#echo $oneCount $twoCount $threeCount $fourCount $fiveCount $sixCount
diceCount=( ["1"]=$oneCount ["2"]=$twoCount ["3"]=$threeCount ["4"]=$fourCount ["5"]=$fiveCount ["6"]=$sixCount )
echo "${diceCount[*]}"
max=0
min=11
for(( i=1;i<${#diceCount[*]};i++ ))
do
	if [ $max -le ${diceCount[$i]} ]
	then
		max=${diceCount[$i]}
	fi
	if [ $min -gt ${diceCount[$i]} ]
	then
		min=${diceCount[$i]}
	fi
done
#echo $max $min
for (( i=1;i<${#diceCount[*]};i++ ))
do
	if [ $max -eq ${diceCount[$i]} ]
	then
		#a=$((i+1))
		echo "$i has repeated maximum times"
	fi
	if [ $min -eq ${diceCount[$i]} ]
	then
		#b=$((i+1))
		echo "$i has repeated minimum times"
	fi
done

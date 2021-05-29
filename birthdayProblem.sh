#! /bin/bash -x

#Problem 2: Write a Program to generate a birth month of 50 individuals between the year 92 & 93. Find all the individuals having birthdays in the same month.
#           Store it to finally print.

janCount=0
febCount=0
marchCount=0
aprilCount=0
mayCount=0
juneCount=0
julyCount=0
augustCount=0
septCount=0
octCount=0
novCount=0
decCount=0
for(( i=1;i<=50;i++ ))
do
	month=$((RANDOM%12 +1))
	#echo $month
	case $month in
		1)
			janCount=$((janCount + 1))
			;;
		2)
			febCount=$((febCount + 1))
			;;
		3)
			marchCount=$((marchCount + 1))
			;;
		4)
			aprilCount=$((aprilCount + 1))
			;;
		5)
			mayCount=$((mayCount + 1))
			;;
		6)
			juneCount=$((juneCount + 1))
			;;
		7)
			julyCount=$((julyCount + 1))
			;;
		8)
			augustCount=$((augustCount +1))
			;;
		9)
			septCount=$((septCount + 1))
			;;
		10)
			octCount=$((octCount + 1))
			;;
		11)
			novCount=$((novCount + 1))
			;;
		12)
			decCount=$((decCount + 1))
			;;
	esac
done
#echo Jan=$janCount"
#echo Feb=$febCount"
#echo Dec=$decCount"
declare -A birthdayCount
birthdayCount=( ["1"]=$janCount ["2"]=$febCount ["3"]=$marchCount ["4"]=$mayCount ["5"]=$mayCount
		["6"]=$juneCount ["7"]=$julyCount ["8"]=$augustCount ["9"]=$septCount ["10"]=$octCount
		["11"]=$novCount ["12"]=$decCount )
#count=0
echo "The count of individuals having birthday in same month is as follows: "
for(( i=1;i<=${#birthdayCount[*]};i++ ))
do
	echo $i=${birthdayCount[$i]}
done



#!/bin/bash
# Advent of Code 2023
# Day 1, part 2

#variables
inputFile=$1
rowNum=1
firstNumProcessed=0

while IFS= read line; do
	echo -e $rowNum
	echo -e $line
	firstNum=$(echo $line | sed -nE 's/^(one|two|three|four|five|six|seven|eight|nine|[0-9]).*/\1/p')
# 	echo -e "First Num: "$firstNum
	lastNum=$(echo $line | sed -nE 's/.*(one|two|three|four|five|six|seven|eight|nine|[0-9]).*/\1/p')
# 	echo -e "Last Num: "$lastNum
	
	# Case statements to convert words to numbers
	case $firstNum in
		one)
			firstNum=1
			;;
		
		two)
			firstNum=2
			;;
			
		three)
			firstNum=3
			;;
		
		four)
			firstNum=4
			;;
	
		five)
			firstNum=5
			;;
		
		six)
			firstNum=6
			;;
			
		seven)
			firstNum=7
			;;
		
		eight)
			firstNum=8
			;;
		
		nine)
			firstNum=9
			;;
			
		*)
			;;
	
	esac
	
	case $lastNum in
		one)
			lastNum=1
			;;
		
		two)
			lastNum=2
			;;
			
		three)
			lastNum=3
			;;
		
		four)
			lastNum=4
			;;
	
		five)
			lastNum=5
			;;
		
		six)
			lastNum=6
			;;
			
		seven)
			lastNum=7
			;;
		
		eight)
			lastNum=8
			;;
		
		nine)
			lastNum=9
			;;

		*)
			;;
	
	esac	
		
	echo -e "First: "$firstNum
	echo -e "Last: "$lastNum
	lineTotal=$firstNum$lastNum
	echo -e "Line Total: " $lineTotal
	let "sumTotal+=lineTotal"
	echo -e "Total: "$sumTotal
# 	echo -e $rowNum","$line","$firstNum","$lastNum","$lineTotal","$sumTotal
	let "rowNum++"
done < ${inputFile}

# echo -e $sumTotal
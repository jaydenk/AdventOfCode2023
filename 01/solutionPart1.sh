#!/bin/bash
# Advent of Code 2023
# Day 1, part 1

inputFile=$1
rowNum=1

while IFS= read line; do
	firstNum=$(echo $line | sed -n "s/^[^0-9]*\([0-9]\).*/\1/p")
	lastNum=$(echo $line | sed -n "s/.*\([0-9]\)[^0-9]*$/\1/p")
	lineTotal=$firstNum$lastNum
	let "sumTotal+=lineTotal"
	echo -e $rowNum","$line","$firstNum","$lastNum","$lineTotal","$sumTotal
	let "rowNum++"
done < ${inputFile}

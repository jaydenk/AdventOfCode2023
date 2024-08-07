#!/bin/bash
# Advent of Code 2023
# Day 1, part 2

#variables
inputFile=$1

cat $1 | sed -E 's/(one)/\11\1/g; s/(two)/\12\1/g; s/(three)/\13\1/g; s/(four)/\14\1/g; s/(five)/\15\1/g; s/(six)/\16\1/g; s/(seven)/\17\1/g; s/(eight)/\18\1/g; s/(nine)/\19\1/g;' | sed -e 's/[^0-9]//g' | awk '{print substr($0,1,1) substr($0,length,1)}' | tr '\n' '+' | sed 's/\(.*\)+/\1\n/' | bc
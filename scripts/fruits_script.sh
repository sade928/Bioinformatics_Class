#!/bin/bash
#
#This is my script about fruit
#
#This is how many rows fruit.txt will have
Cat fruits.txt |wc -l

#This is how many apples were sold on day 1
cat fruits.txt |cut -f1| grep "Apple" |wc -l

#This is how many fruits were sold on day 2
Cat fruits.txt |cut -f2| grep -v "Day2"|sort|uniq -c

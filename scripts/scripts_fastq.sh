#!/bin/bash
#
#This code is to unzip the file
Gunzip ERR20236_1.fastq.gz
#This is the code for how many sequences are in the file
awk '(NR%4==2)' ERR20236_1.fastqz|wc -1
#This is how many sequences have "N" in it
awk '(NR%4==2)' ERR20236_1.fastqz|grep "N"|wc -l
#This is how to count the # of ATCG's in the code
awk '(NR%4==2)' ERR20236_1.fastgz|grep -v "N"| awk 'NR==59'| grep -o '[ATCG]'|sort|uniq -c


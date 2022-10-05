#! /bin/sh

#If statement for File Input
if [ $# != 1 ]; then
        echo "Usage: Please specify fasta input on command line"
        exit
fi

#initialize variable
reverse=""

#read in data
name=`grep ">" $1`
sequence=`grep -v ">" $1`

echo "Name: $name"

#calculate length of sequence
len=${sequence}

echo "Length: $len"

#loop through sequence in reverse
#for (( i=$len; i>=0; i-- ))
#do
 #   reverse="$reverse${sequence:$i:1}"
#done
if [ $# -lt 1 ] || [ $# -gt 1 ]; then
        echo "Error: add one argument to input"
        else echo "argument is 1"
        exit
fi

rev $sequence | tr [aA] 'atcg' 'tagc' $sequence > rc.$1.txt

#echo "$sequence
#$reverse
#"

#complement sequence
#rc=`echo $reverse | tr 'atcg' 'tagc'`

#echo "$rc
#"


#echo $name >$1.rc.txt
#echo $rc >>$1.rc.txt


#Chloe
#Madeline
#Jordan
#Sarah

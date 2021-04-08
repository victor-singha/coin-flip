#! /bin/bash
headcount=0
tailcount=0
for ((i=1;i<50;i++))
do
	result=$((RANDOM%2))
	if [ $result -eq 0 ]
	then
		headcount=$((headcount+1))
	else
		tailcount=$((tailcount+1))
	fi
done
echo "heads: " $headcount
echo "tails: " $tailcount

#! /bin/bash
headcount=0
tailcount=0
while [ $headcount -ne 21 -a $tailcount -ne 21 ]
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
headwin=$((headcount-tailcount))
tailwin=$((tailcount-headcount))
if [ $headcount -gt $tailcount ]
then
	echo Head wins by $headwin
elif [ $tailcount -gt $headcount ]
then
	echo Tail wins by $tailwin
else
	echo Tie
fi

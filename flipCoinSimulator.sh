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
headwin=$((headcount-tailcount))
tailwin=$((tailcount-headcount))
if [ $headwin -lt 2 -a $tailwin -lt 2 ]
then
	echo "Tie"
	echo "Game extended"
	while [ $((headcount-tailcount)) -lt 2 -a $((tailcount-headcount)) -lt 2 ]
	do
		res=$((RANDOM%2))
		if [ $res -eq 0 ]
		then
			headcount=$((headcount+1))
		else
			tailcount=$((tailcount+1))
		fi
	done
fi
echo "heads: " $headcount 
echo "tails: " $tailcount
headwin=$((headcount-tailcount))
tailwin=$((tailcount-headcount))
if [ $headwin -gt $tailwin ]
then
	echo Head wins by $headwin
else
	echo Tail wins by $tailwin
fi


#!/bin/zsh
n=$1

echo "for:"
fact=1
for i in {1..$n}
do
	fact=$(( $fact * $i ))
done
echo $fact
echo

echo "while:"
fact=1
j=1
while (( $j <= $n ))
do
	fact=$(( $fact * $j ))
	j=$(($j + 1))	
done
echo $fact
echo

echo "until:"
fact=1
k=1
until [[ k -gt $n ]]
do
	fact=$(( $fact * $k  ))
	k=$(( $k + 1  ))
done
echo $fact
echo

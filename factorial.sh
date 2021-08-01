#!/bin/zsh
# No need for meticulously checking the no. of arguments... as the program will naturally exit on such an obvious flaw.

n=$1
# Factorial Calculation using for loop.
echo "for:"
fact=1
for i in {1..$n}
do
	fact=$(( $fact * $i ))
done
echo $fact
echo

# Factorial calcultion using while loop
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

# Factorial calculation using until loop
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

# End of the script

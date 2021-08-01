#!/bin/zsh

# Write a script which reads two strings as arguments and then:

# 1.1 Tests to see if the first string is of zero length, and if the other is of non-zero length.

STR_1=$1
STR_2=$2
LEN_1=${#STR_1}
LEN_2=${#STR_2}

echo "String 1: $STR_1 $LEN_1"
echo "String 2: $STR_2 $LEN_2"

# 1.2 telling the user of both results.
if [[ -z $STR_1 ]]
then 
	echo "String 1('$STR_1') is of zero length."
else
	echo "String 1('$STR_1') is of non-zero length."
fi

if (( $LEN_2 == 0  ))
then
	echo "String 2('$STR_2') is of zero length."
else
	echo "String 2('$STR_2') is of non-zero length."
fi

# 2.1 Determines the length of each string, and reports on which one is longer or 
if [[ $LEN_1 -gt $LEN_2 ]]; then echo "'$1' is longer than '$2'."
elif [[ $LEN_1 -eq $LEN_2  ]]; then echo "'$1' and '$2' are both same in length."
# 2.2 if they are of equal length.
else echo "'$1' is shorter than '$2'."
fi

# 3. Compares the strings to see if they are the same, and reports on the result.
if [[ $STR_1 == $STR_2  ]]
then
	echo "Both the strings are the same."
else
	echo "Both the strings are different."
fi

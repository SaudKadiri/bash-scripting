#!/bin/zsh

# Write a script that will act as a simple calculator for add, subtract, multiply and divide.

# 1. Each operation should have its own function.
# 2. Any of the three methods for bash arithmetic, ( $((..)), let , or expr) may be used.
add () {
	echo "$1 + $2 = $(( $1 + $2 ))"
}

subtract () {
	echo "$1 - $2 = $(( $1 - $2 ))"
}

multiply () {
	echo "$1 * $2 = `expr $1 * $2`"
}

divide () {
	echo "$1 / $2 = $(( $1 / $2))"
}

# 3. The user should give 3 arguments when executing the script:
# 4. The first should be one of the letters a, s, m, or d to specify which math operation.
# 5. The second and third arguments should be the numbers that are being operated on.
(( $# != 3 )) && echo "Invalid arguments!" && exit

OP=$1
NUM_1=$2
NUM_2=$3

# 6. The script should detect for bad or missing input values and display the results when done.

if [[ $OP == a ]]; then add $NUM_1 $NUM_2
elif [[ $OP == s ]]; then subtract $NUM_1 $NUM_2
elif [[ $OP == m ]]; then multiply $NUM_1 $NUM_2
elif [[ $OP == d ]]; then divide $NUM_1 $NUM_2
else
	echo "Invalid operaor: '$OP' (expected a, s, m or d)."
fi

#!/bin/zsh

# 1. Prompts the user for a directory name and then creates it with mkdir.
echo -n "Enter the folder name: "
read NEW_DIR
[[ -d $NEW_DIR ]] && echo "$NEW_DIR already exists..." && exit
mkdir $NEW_DIR


# 2. Changes to the new directory and prints out where it is using pwd.
cd $NEW_DIR
pwd


# 3. Using touch, creates several empty files and runs ls on them to verify they are empty.
#for n in {1..4}
#do
#	touch file$n
#done

touch file{1..4}
ls file?


# 4. Puts some content in them using echo and redirection.
for file in file?
do
	echo This is $file. > $file
done


# 5. Displays their content using cat.
cat file?

# 6. Says goodbye to the user and cleans up after itself.
cd -
rm -rf $NEW_DIR
echo "Goodbye, my friend!"


### END ###

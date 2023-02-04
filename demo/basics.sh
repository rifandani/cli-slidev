#!/bin/bash
# In order to interpret the file as an executable, you'll also have to add the shebang (#!) at the top of the script.

# variables
name = "World"
name2="May"
name3="June"

echo "Hello, $name"
echo 'Hello, $name' # string interpolation doesn't work in single quote
echo "Hello, $name2"
echo "Hello, ${name3}"
echo "Hello, $(whoami)!" # output of a shell execution

echo "------------------------------------------------"

# user inputs
echo "Who are you?"
read who
echo "How old are you?"
read age

echo "Hello, $who!"
if [ "$age" -gt 30 ]
then
  echo 'You are old.'
else
  echo 'You are young.'
fi

echo "------------------------------------------------"

# loops
months=('April' 'May' 'June' 'July')

for month in "${months[@]}"
do
  echo "month: $month"
done

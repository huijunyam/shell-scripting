#~ /bin/bash

echo "Shell Scripting is Fun"

MESSAGE="Hello World"
echo $MESSAGE
echo ${MESSAGE}

HOSTNAME=$1
echo "This script is running on ${HOSTNAME} where ${HOSTNAME} is the outout of the \"HOSTNAME\" command."


if [ -e "/etc/shadow" ]
then
echo "Shadow passwords are enabled"
if [ -w "/etc/shadow" ]
then
echo "You have permissions to edit /etc/shadow"
else
echo "You do not have permission to edit /etc/shadow"
fi
else
echo "Shadow Passwords are not enabled"
fi

ANIMALS="bear pig dog cat sheep"
for ANIMAL in $ANIMALS
do
  echo "$ANIMAL"
done

#list files and determine file type based on user input
FILES=$(ls)
echo "$FILES"
read -p "Enter a filename: " FILENAME
echo "$FILENAME"

if [ -d $FILENAME ]
then
echo "$FILENAME is directory"
elif [ -r $FILENAME ]
then
echo "$FILENAME is a regular file"
else
echo "$FILENAME is undefined"
fi

# accept unlimited input command
for USER in $@
do
  echo "USER: $USER"
done

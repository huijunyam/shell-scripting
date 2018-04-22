#! /bin/bash

INDEX=1
while [ $INDEX -lt 6 ]
do
  echo "Creating project-${INDEX}"
  mkdir /usr/local/project-${INDEX}
  ((INDEX++))
done

# read file line by line
LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done < /etc/fstab

LINE_NUM=1
while read LINE
do
  echo "${LINE_NUM}: ${LINE}"
  ((LINE_NUM++))
done < /../../etc/passwd

read -p "How many lines of /etc/passwd would you like to see? " NUM
LINE_NUM=1
while read LINE
do
  if [ $LINE_NUM -gt $NUM ]
  then
    break
  else
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
  fi
done < /../../etc/passwd


while true
do
  echo "1. Show disk usage."
  echo "2. Show system uptime."
  echo "3. Show the users logged into the system."
  read -p "What would you like to do? (Enter q to quit.)" ANSWER
  if [ $ANSWER = 1 ]
  then
    df
  elif [ $ANSWER = 2 ]
  then
    uptime
  elif [ $ANSWER = 3 ]
  then
    who
  elif [ "$ANSWER" -eq "q" ]
  then
    echo "Goodbye"
    break
  else
    echo "Invalid input"
  fi
done

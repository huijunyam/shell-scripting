#! /bin/bash

function hello() {
  echo "Hello World"
}

hello

function backup_file() {
  if [ -f $1 ]
  then
    BACK="/tmp/$(basename ${1}).$(date + %F).$$"
    echo "Backing up $1 to ${BACK}"
    cp $1 $BACK
  else
    return 1
  fi
}

backup_file /etc/hosts
if [ $? -eq 0]
then
  echo "Backup success"
else
  echo "Backup failed"
  exit 1
fi

#  wc​ utility is used to count the number of lines, words, and bytes
function file_count() {
  local NUMBER_OF_FILES=$(ls | wc -l)
   echo "$NUMBER_OF_FILES"
}
file_count

function file_count_specific_directory() {
  local DIRECTORY=$1
  local NUMBER_OF_FILES=$(ls $DIRECTORY | wc -l)
  echo "$DIRECTORY: "
  echo "$NUMBER_OF_FILES"
}

file_count_specific_directory /../../etc
file_count_specific_directory /../../var
file_count_specific_directory /../../usr/bin

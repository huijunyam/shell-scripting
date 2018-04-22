#! /bin/bash
# exit status ranges from 0 - 255
# exit status 0 means success
# $? - exit status
# -c - count

HOST="google.com"
# send one packet to google.com
ping -c 1 $HOST
if [ "$?" -eq "0"]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable."
fi

HOST="google.com"
ping -c 1 $HOST
RETURNED_CODE=$?
if [ "$RETURNED_CODE" -eq "0"]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable."
fi

HOST="google.com"
ping -c 1 $HOST && echo "$HOST reachable"

HOST="google.com"
ping -c 1 $HOST
if [ "$?" -ne "0"]
then
  echo "$HOST unreachable."
  exit 1
fi
exit 0

# check various exit status code for ping using man ping

echo "The script will exist with a 0 exit status".
echo "$?"

FILE=$1
if [ -d $FILE ]
then
  exit 1
elif [ -r $FILE ]
then
  exit 0
else
  exit 2
fi

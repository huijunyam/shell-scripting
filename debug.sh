#! /bin/bash -x

# -x print command when they execute
# +x stop debugging
# -e -> exit on error
# -v prints shell input lines as they are read

DEBUG="echo"
$DEBUG ls #can turn on and off the debugging mode: turn on, it will echo the line, turn off by commenting out ln 8, it will be ls


MESSAGE="Random number: $RANDOM"

echo "$MESSAGE"
logger -p user.info "$MESSAGE"

function logMessage() {
  local MESSAGE=$@
  echo "$MESSAGE"
  logger -i -t randomly -p user.info "$MESSAGE"
}

logMessage "Random number: $RANDOM"
logMessage "Random number: $RANDOM"
logMessage "Random number: $RANDOM"

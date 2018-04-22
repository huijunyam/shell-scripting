#! /bin/bash

# gracefully handle instances when no *.j0pg found in directory
shopt -s nullglob
DATE=$(date + %F)
for FILE in *.jpg
do
  mv $FILE ${DATE}-${FILE}
done

function rename() {
  read -p "Please enter a file entension: " FILETYPE
  read -p "Please enter a file prefix: (Press ENTER for 2015-08-10) " PREFIX
  if [[ "$PREFIX" = "" ]]
  then
    echo "empty string"
    for FILE in *.$FILETYPE
    do
      echo "Renaming $FILE to 2015-08-10-$FILE"
      mv $FILE 2015-08-10-$FILE
    done
  else
    echo "got string"
    for FILE in *.$FILETYPE
    do
      echo "Renaming $FILE to $PREFIX-$FILE"
      mv $FILE $PREFIX-$FILE
    done
  fi
}
rename

#!/bin/bash
echo "Changing directory to /tmp"
cd /tmp

if [[  -e xyzTmp ]]
then
  echo "Directory xyzTmp is already existing"
else
  echo "Creating Directory xyzTmp"  
  mkdir xyzTmp
  if [[ $? -eq 0 ]]
  then
    echo "Successfully Created"
  else
    echo "Failed to create the directory"
  fi
fi




#!/bin/bash

if [[  -e /tmp/xyzTmp ]]
then
  echo "Directory xyzTmp is already existing"
else
  echo "Creating Directory xyzTmp"  
  mkdir -p /tmp/xyzTmp
  if [[ $? -eq 0 ]]
  then
    echo "Successfully Created the directory xyzTmp"
  else
    echo "Failed to create the directory xyzTmp"
  fi
fi




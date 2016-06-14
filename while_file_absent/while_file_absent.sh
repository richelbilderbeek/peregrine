#!/bin/bash

while [ true ]
do
  n_files=`ls | wc | cut -d ' ' -f 7`
  if [ $n_files -eq 2 ] 
  then 
    break
  fi

  echo $n_files
  sleep 1

done
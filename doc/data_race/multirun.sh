#!/bin/bash
for i in `seq 1 10`
do
  mkdir $i
  cp *.sh $i
  cd $i
  ./run.sh
  cd ..
done

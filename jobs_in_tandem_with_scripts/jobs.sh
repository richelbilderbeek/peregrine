#!/bin/bash

# Clean up
rm *.txt
rm *.log
echo "Cleaned up"

##############################
# Run first script
##############################

jobid=`sbatch job_1.sh | cut -d ' ' -f 4`

echo "job id of first script is "$jobid

##############################
# Run second script
##############################

cmd="sbatch job_2.sh --dependency=afterok:$jobid"

echo "cmd: "$cmd

jobid=`$cmd | cut -d ' ' -f 4`

echo "job id of second script is "$jobid

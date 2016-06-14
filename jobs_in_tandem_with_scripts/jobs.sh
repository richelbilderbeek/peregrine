#!/bin/bash

# Clean up
rm *.txt
rm *.log

##############################
# Run first script
##############################

echo "Sending script to sbatch:"
jobid=`sbatch job_1.sh | cut -d ' ' -f 4`

echo "job id of first script is "$jobid

##############################
# Run second script
##############################

cmd="sbatch job_2.sh --dependecy=afterok:"$jobid" | cut -d ' ' -f 4"
echo "Starting cmd: "$cmd
jobid=$cmd

echo "job id of second script is "$jobid

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

cmd="sbatch --dependency=afterok:$jobid job_2.sh"
echo "cmd: "$cmd

jobid=`$cmd | cut -d ' ' -f 4`
echo "job id of second script is "$jobid

##############################
# Run third script
##############################

cmd="sbatch --dependency=afterok:$jobid job_3.sh"
echo "cmd: "$cmd

jobid=`$cmd | cut -d ' ' -f 4`
echo "job id of third script is "$jobid

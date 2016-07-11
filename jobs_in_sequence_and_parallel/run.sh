#!/bin/bash

# Clean up
rm *.txt
rm *.log
echo "Cleaned up"

##############################
# Run first script
##############################

jobid=`sbatch job1.sh | cut -d ' ' -f 4`
echo "job id of first script is "$jobid

##############################
# Run second script
##############################

cmd="sbatch --dependency=afterok:$jobid job2_master.sh"
echo "cmd: "$cmd

jobid=`$cmd | cut -d ' ' -f 4`
echo "job id of second script is "$jobid

##############################
# Run third script
##############################

# This is done by job2_master.sh
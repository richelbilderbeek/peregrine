#!/bin/bash

# Clean up
rm job_1.txt

##############################
# Run first script
##############################

echo "Sending script to sbatch:"
jobid=`sbatch job_1.sh | cut -d ' ' -f 4`

echo "job id of first script is "$jobid

##############################
# Run second script
##############################

echo "Script:"
echo $script

echo "Sending script to sbatch:"
jobid=`sbatch job_2.sh --dependecy=afterok:$id | cut -d ' ' -f 4`
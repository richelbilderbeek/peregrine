#!/bin/bash

# Clean up
rm job_1.txt

##############################
# Run first script
##############################

script="#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_1
#SBATCH --output=job_1.log
echo \"Created by job_1.sh\" > job_1.txt
"

echo "Script:"
echo $script

echo "Sending script to sbatch:"
jobid=`echo "$script" | sbatch | cut -d ' ' -f 4`

#echo "$script" | sbatch # Works
#jobid=`sbatch job_1.sh | cut -d ' ' -f 4`  # Works

echo "job id of first script is "$jobid

##############################
# Run second script
##############################

script="#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_2
#SBATCH --output=job_2.log
#SBATCH --dependency=afterok:"$jobid"

if [ ! -e 'job_1.txt' ]
then
  echo \"ERROR: job_1.txt absent\"
  exit 1
fi

mv job_1.txt job_2.txt
echo \"Added by job_2.sh\" >> job_2.txt
"

echo "Script:"
echo $script

echo "Sending script to sbatch:"
jobid=`echo "$script" | sbatch | cut -d ' ' -f 4`

echo "job id of second script is "$jobid



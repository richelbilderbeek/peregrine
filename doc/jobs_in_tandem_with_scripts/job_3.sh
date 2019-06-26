#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_3
#SBATCH --output=job_3.log
if [ ! -e 'job_2.txt' ]
then
  echo "ERROR: job_2.txt absent"
  exit 1
fi

mv job_2.txt job_3.txt
echo "Added by job_3.sh" >> job_3.txt
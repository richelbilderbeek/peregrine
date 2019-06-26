#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_2
#SBATCH --output=job_2.log
if [ ! -e 'job_1.txt' ]
then
  echo "ERROR: job_1.txt absent"
  exit 1
fi

mv job_1.txt job_2.txt
echo "Added by job_2.sh" >> job_2.txt
#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_3
#SBATCH --output=job_3.log
for filename in `ls *.txt`
do
  cat filename >> job_3.txt
done
#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job1
#SBATCH --output=job1.log

# Create one to (and including) ten files

n=$((1 + RANDOM % 10))
for i in `seq 1 1 $n`
do
  echo "Created by job1.sh" > file_$i.txt
done
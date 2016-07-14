#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job1
#SBATCH --output=job1.log
echo "Created by job1.sh" > out.txt
sleep 10
echo "Another line created by job1.sh" >> out.txt

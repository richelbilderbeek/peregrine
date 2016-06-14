#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_1
#SBATCH --output=job_1.log

echo "Created by job_1.sh" > file_1.txt
echo "Created by job_1.sh" > file_2.txt
echo "Created by job_1.sh" > file_3.txt
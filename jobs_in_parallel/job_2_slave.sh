#!/bin/bash
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=job_2_slave
#SBATCH --output=job_2_slave_%j.log
echo "Added by job_2.sh" >> $1
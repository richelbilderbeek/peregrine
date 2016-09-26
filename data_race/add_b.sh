#!/bin/bash
#SBATCH --time=0:00:01
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=b
#SBATCH --output=b.log
echo "B" >> out.txt
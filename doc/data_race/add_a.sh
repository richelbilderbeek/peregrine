#!/bin/bash
#SBATCH --time=0:00:01
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1M
#SBATCH --job-name=start_b
#SBATCH --output=start_b.log
echo "A" >> out.txt
#cat shakespeare.html >> out.txt
sbatch add_b.sh

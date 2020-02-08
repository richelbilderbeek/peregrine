#!/bin/bash
# Bash script to run an R script with sbatch
#
# Usage:
#
#   sbatch run_r_script.sh my_r_script.R
#
#SBATCH --time=240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=run_r_script
#SBATCH --output=run_r_script_%j.log
module load R
echo "Rscript $@"
Rscript "$@"

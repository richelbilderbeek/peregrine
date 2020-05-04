#!/bin/bash
# Bash script to run an R command with sbatch
#
# Usage:
#
#   sbatch run_r_cmd "print(\"hello\")"
#
#SBATCH --time=240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=run_r_cmd
#SBATCH --output=run_r_cmd_%j.log
module load R
echo "Rscript -e $@"
Rscript -e "$@"

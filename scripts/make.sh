#!/bin/bash
# Bash script to call make with sbatch
#
# Usage:
#
#   sbatch make.sh
#
#   sbatch make.sh all
#
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=100G
#SBATCH --job-name=make
#SBATCH --output=make_%j.log
module load R Python
echo "make $@"
make "$@"

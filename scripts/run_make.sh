#!/bin/bash
# Bash script to run make with sbatch
#
# Usage:
#
#   sbatch run_make.sh
#
#SBATCH --time=240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=make
#SBATCH --output=make_%j.log
module load R Python/3.8.2-GCCcore-9.3.0 binutils
make


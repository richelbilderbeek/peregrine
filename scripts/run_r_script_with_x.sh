#!/bin/bash
# Bash script to run an R script with sbatch and X11
#
# Usage:
#
#   sbatch run_r_script_with_x my_r_script.R
#
#SBATCH --time=240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=run_r_script_with_x
#SBATCH --output=run_r_script_with_x%j.log
module load R
module load ImageMagick
module load X11 
module load libX11
module load xprop
echo "xvfb-run Rscript $@"
xvfb-run -pixdepths 32 Rscript "$@"

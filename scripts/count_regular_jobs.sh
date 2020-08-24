#!/bin/bash
# Script to count the number of regular jobs
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./count_regular_jobs.sh
#
# Usage, on Peregrine:
#
#   sbatch ./count_regular_jobs.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=count_regular_jobs
#SBATCH --output=count_regular_jobs.log
module load R

Rscript -e 'peregrine::count_regular_jobs()'



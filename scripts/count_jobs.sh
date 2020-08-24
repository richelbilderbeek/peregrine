#!/bin/bash
# Script to count the number of jobs
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./count_jobs.sh
#
# Usage, on Peregrine:
#
#   sbatch ./count_jobs.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=count_jobs
#SBATCH --output=count_jobs.log
module load R

Rscript -e 'peregrine::count_jobs()'



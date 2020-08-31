#!/bin/bash
# Script to send an email to me on Peregrine
#
# Usage, on Peregrine:
#
#   sbatch ./email_me.sh
#
# Peregrine directives:
#SBATCH --time=0:01:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=count_jobs
#SBATCH --output=count_jobs.log
module load R

Rscript -e 'peregrine::count_jobs()'



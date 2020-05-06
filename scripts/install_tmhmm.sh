#!/bin/bash
# Script to install tmhmm
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_tmhmm.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_tmhmm.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_tmhmm
#SBATCH --output=install_tmhmm.log
module load R

Rscript -e 'remotes::install_github("richelbilderbeek/tmhmm")'



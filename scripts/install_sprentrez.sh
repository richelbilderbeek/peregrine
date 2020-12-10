#!/bin/bash
# Script to install sprentrez and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_sprentrez.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_sprentrez.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_sprentrez
#SBATCH --output=install_sprentrez.log
module load R

Rscript -e 'remotes::install_github("richelbilderbeek/sprentrez")'



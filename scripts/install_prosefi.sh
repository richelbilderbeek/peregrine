#!/bin/bash
# Script to install protein_sequence_finder
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_prosefi.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_prosefi.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_prosefi
#SBATCH --output=install_prosefi.log
module load R

Rscript -e 'remotes::install_github("richelbilderbeek/prosefi")'


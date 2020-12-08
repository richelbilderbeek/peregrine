#!/bin/bash
# Script to install ncbi_peregrine and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_ncbi_peregrine.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_ncbi_peregrine.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_ncbi_peregrine
#SBATCH --output=install_ncbi_peregrine.log
module load R

./install_ncbi.sh

Rscript -e 'remotes::install_github("richelbilderbeek/ncbi_peregrine")'



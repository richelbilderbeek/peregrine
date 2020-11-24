#!/bin/bash
# Script to install ncbi and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_ncbi.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_ncbi.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_ncbi
#SBATCH --output=install_ncbi.log
module load R

./install_cobaltr.sh
./install_pureseqtmr.sh

Rscript -e 'remotes::install_github("richelbilderbeek/ncbi")'



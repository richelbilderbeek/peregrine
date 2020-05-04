#!/bin/bash
# Script to install bbbq (without and its dependencies)
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_bbbq.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_bbbq.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_bbbq
#SBATCH --output=install_bbbq.log
module load R
module load HDF5/1.10.1-foss-2018a

Rscript -e 'remotes::install_github("jtextor/epitope-prediction")'
Rscript -e 'remotes::install_github("richelbilderbeek/bbbq")'


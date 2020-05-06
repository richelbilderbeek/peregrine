#!/bin/bash
# Script to install epitope-prediction
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_epitope-prediction.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_epitope-prediction.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_epitope-prediction
#SBATCH --output=install_epitope-prediction.log
module load R

Rscript -e 'remotes::install_github("jtextor/epitope-prediction")'


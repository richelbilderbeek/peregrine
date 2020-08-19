#!/bin/bash
# Script to install epiprepreds
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_epiprepreds.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_epiprepreds.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_epiprepreds
#SBATCH --output=install_epiprepreds.log
module load R

./install_epitope_prediction.sh

Rscript -e 'remotes::install_github("richelbilderbeek/epiprepreds")'



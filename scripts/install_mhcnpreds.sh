#!/bin/bash
# Script to install mhcnpreds and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_mhcnpreds.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_mhcnpreds.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_mhcnpreds
#SBATCH --output=install_mhcnpreds.log
module load R

./install_mhcnuggetsr.sh

Rscript -e 'remotes::install_github("richelbilderbeek/mhcnpreds")'



#!/bin/bash

# Script to install COBALT
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_cobalt.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_cobalt.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_cobalt
#SBATCH --output=install_cobalt.log
module load R

Rscript -e 'if (!cobaltr::is_cobalt_installed()) cobaltr::install_cobalt()'


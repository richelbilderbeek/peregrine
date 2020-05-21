#!/bin/bash
# Script to install razzo and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./update_packages.sh
#
# Usage, on Peregrine:
#
#   sbatch ./update_packages.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=2G
#SBATCH --job-name=update_packages
#SBATCH --output=update_packages.log
module load R
Rscript -e "devtools::update_packages()"

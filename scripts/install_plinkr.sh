#!/bin/bash
# Script to install plinkr
# on the Uppmax computer cluster
#
# Usage, locally:
#
#   ./install_plinkr.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_plinkr.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_plinkr
#SBATCH --output=install_plinkr.log
module load R
Rscript -e 'remotes::install_github("richelbilderbeek/plinkr")'


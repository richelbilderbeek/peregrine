#!/bin/bash
# Script to install multiple PLINK versions
# on the Uppmax computer cluster
#
# Usage, locally:
#
#   ./install_plinks.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_plinks.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_plinks
#SBATCH --output=install_plinks.log
module load R
./install_plinkr.sh
Rscript -e 'if (!plinkr::is_plink_installed()) plinkr::install_plinks()'



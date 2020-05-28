#!/bin/bash
# Script to install mhcnuggetsr and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_mhcnuggetsr.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_mhcnuggetsr.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_mhcnuggetsr
#SBATCH --output=install_mhcnuggetsr.log
module load R

Rscript -e 'remotes::install_github("richelbilderbeek/mhcnuggetsr")'

./install_mhcnuggets.sh

Rscript -e 'mhcnuggetsr::mhcnuggetsr_self_test()'



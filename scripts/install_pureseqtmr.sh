#!/bin/bash
# Script to install pureseqtmr and its dependencies
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_pureseqtmr.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_pureseqtmr.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_pureseqtmr
#SBATCH --output=install_pureseqtmr.log
module load R

Rscript -e 'remotes::install_github("richelbilderbeek/pureseqtmr")'

./install_pureseqtm.sh



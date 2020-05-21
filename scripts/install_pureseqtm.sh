#!/bin/bash
# Script to install PureseqTM
# on the Peregrine computer cluster
#
# Usage, locally:
#
#   ./install_pureseqtm.sh
#
# Usage, on Peregrine:
#
#   sbatch ./install_pureseqtm.sh
#
# Peregrine directives:
#SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --job-name=install_pureseqtm
#SBATCH --output=install_pureseqtm.log
module load R

Rscript -e 'if (!pureseqtmr::is_pureseqtm_installed()) pureseqtmr::install_pureseqtm()'

